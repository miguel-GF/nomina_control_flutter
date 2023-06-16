import 'package:sqflite/sqflite.dart';

import '../models/operador/operador.dart';
import 'database_helper.dart';

class OperadorDbhelper {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  static const String table = 'operadores';
  static const String columnId = 'operadorId';
  static const String columnName = 'nombre';
  static const String columnLastName = 'apellidos';
  static const String columnStatus = 'status';
  static const String columnFol = 'folio';
  static const String columnCreationDate = 'registroFecha';
  static const String columnAutorId = 'registroAutorId';

  static Future<void> createTable(Database db, int version) async {
    switch (version) {
      case 1:
        await db.execute('''
      CREATE TABLE IF NOT EXISTS $table (
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL,
        $columnLastName TEXT NOT NULL,
        $columnStatus INTEGER NOT NULL,
        $columnFol INTEGER NOT NULL,
        $columnCreationDate DATE NOT NULL,
        $columnAutorId INTEGER NOT NULL
      )
    ''');
        break;
      default:
        break;
    }
  }

  // Hace insert
  Future<int> insert({required Operador operador}) async {
    try {
      final Database db = await databaseHelper.database;
      final Map<String, dynamic> insert = operador.toJson();
      return db.insert(table, insert);
    } catch (e) {
      rethrow;
    }
  }

  // Obtiene el máximo de una columna mas 1001
  Future<int?> getMaxValue({required String columnName}) async {
    final Database db = await databaseHelper.database;
    final List<Map<String, Object?>> result =
        await db.rawQuery('SELECT MAX($columnName) + 1001 FROM $table');
    if (result.first.values.first == null) {
      return 1000;
    }
    // ignore: cast_nullable_to_non_nullable
    final int maxValue = result.first.values.first as int;
    return maxValue;
  }

  // Obtiene todos los operadores
  Future<List<Operador>> listar() async {
    final Database db = await databaseHelper.database;
    final List<Map<String, Object?>> result = await db.query(table);
    final List<Operador> operadores = result
        .map((Map<String, Object?> map) => Operador.fromJson(map))
        .toList();
    return operadores;
  }
}
