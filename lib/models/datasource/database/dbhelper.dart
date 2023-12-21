import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static final DbHelper dbHelper = DbHelper._();
  Database? _database;

  final String _db = "main.db";
  final int _versionDb = 1;

  DbHelper._() {
    try {
      if (_database == null) {
        _initDataBase();
      } else if (!_database!.isOpen) {
        _initDataBase();
      }
    } catch (e) {
      debugPrintStack(label: "DbHelper $e");
    }
  }

  _initDataBase() async {
    _database = await openDatabase(_db, version: _versionDb);
  }
}
