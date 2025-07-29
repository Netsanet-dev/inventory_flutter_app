class CachedData<T> {
  final T data;
  final DateTime timestamp;
  final Duration ttl;

  CachedData(
    this.data,
    this.timestamp, {
    this.ttl = const Duration(minutes: 5),
  });

  bool get isValid => DateTime.now().difference(timestamp) < ttl;
}
