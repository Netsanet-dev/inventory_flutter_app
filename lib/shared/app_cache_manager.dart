import 'package:inventory_flutter_app/shared/app_cache_data.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';

class CacheManager<K, V> {
  final Map<K, CachedData<V>> _cache = {};
  final int _maxEntries;
  final Duration _defaultTtl;
  final String _logContext;

  CacheManager({
    int maxEntries = 100,
    Duration defaultTtl = const Duration(minutes: 5),
    String logContext = 'CacheManager',
  }) : _maxEntries = maxEntries,
       _defaultTtl = defaultTtl,
       _logContext = logContext;

  /// Retrieves data from the cache. Returns null if not found or stale.
  V? get(K key) {
    final cached = _cache[key];
    if (cached != null && cached.isValid) {
      LoggerUtil.logDebug(_logContext, 'Cache hit for key: $key');
      return cached.data;
    }
    if (cached != null && !cached.isValid) {
      LoggerUtil.logDebug(
        _logContext,
        'Cache for key: $key is stale, removing.',
      );
      _cache.remove(key);
    }
    return null;
  }

  /// Puts data into the cache. Handles eviction if the cache is full.
  void put(K key, V value, {Duration? ttl}) {
    if (_cache.length >= _maxEntries) {
      _evictOldest();
    }
    _cache[key] = CachedData<V>(value, DateTime.now(), ttl: ttl ?? _defaultTtl);
    LoggerUtil.logDebug(_logContext, 'Cached data for key: $key');
  }

  /// Removes a specific entry from the cache.
  void remove(K key) {
    _cache.remove(key);
    LoggerUtil.logDebug(_logContext, 'Removed cache entry for key: $key');
  }

  /// Clears all entries from the cache.
  void clear() {
    _cache.clear();
    LoggerUtil.logInfo(_logContext, 'Cache cleared.');
  }

  /// Evicts the oldest entry in the cache (basic LRU).
  void _evictOldest() {
    if (_cache.isNotEmpty) {
      final oldestKey = _cache.keys.first;
      _cache.remove(oldestKey);
      LoggerUtil.logInfo(
        _logContext,
        'Cache full, evicted oldest entry: $oldestKey',
      );
    }
  }

  /// Invalidates cache entries based on a predicate.
  void invalidateWhere(bool Function(K key, CachedData<V> value) test) {
    _cache.removeWhere(test);
    LoggerUtil.logDebug(
      _logContext,
      'Invalidated cache entries based on predicate.',
    );
  }
}
