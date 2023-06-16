import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'operador_dbhelper.dart';

class DatabaseHelper {
  // Hacemos de esta clase un singleton para mantener una única instancia de la base de datos.
  DatabaseHelper._privateConstructor();
  static const String _databaseName = 'nomina_control.db';
  static const int _databaseVersion = 1;

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // La referencia a la base de datos SQLite.
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  // Inicializa la base de datos.
  Future<Database> _initDatabase() async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    final String path = p.join(documentsDirectory.path, _databaseName);
    return openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  // Crea sentencias de sql dependiendo el la versión db
  Future<void> _onCreate(Database db, int version) async {
    await OperadorDbhelper.createTable(db, version);
  }

  Future<void> clearDatabase() async {
    final Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final String databasePath = p.join(documentsDirectory.path, _databaseName);
    await deleteDatabase(databasePath);
  }
}
