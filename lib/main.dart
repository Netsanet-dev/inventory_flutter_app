import 'package:flutter/material.dart';
import 'package:inventory_flutter_app/core/app.dart';
import 'package:inventory_flutter_app/utils/app_hive_initilizer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await HiveInitializer.initHive();
  
  runApp(const InventoryApp());
}

