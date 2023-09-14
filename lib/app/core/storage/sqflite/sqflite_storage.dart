import 'dart:async';

import 'package:expensio/app/core/storage/expensio_storage.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../data/models/financial_record.dart';

class SqfliteStorage implements ExpensioStorage {
  SqfliteStorage();

  static const databaseName = 'financial_records';

  static Future<Database> open() async {
    final databasePath = await getDatabasesPath();
    final databasePathWithName = join(databasePath, databaseName);

    return await openDatabase(
      databasePathWithName,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE financial_records (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            amount REAL,
            comment TEXT,
            date TEXT,
            isIncome INTEGER
          )
        ''');
      },
    );
  }

  @override
  Future<void> saveFinancialRecord(FinancialRecord record) async {
    final db = await SqfliteStorage.open();
    await db.insert(
      'financial_records',
      record.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Map<int,String> polyanaDictionary = {
    0 : 'Все хорошо',
    1 : 'Мне нужны черешни',
    2 : 'Нет, со мной точно все хорошо'
  };

  @override
  Future<List<FinancialRecord>> getAllFinancialRecords() async {
    final db = await SqfliteStorage.open();
    final List<Map<String, dynamic>> maps = await db.query('financial_records');
    return List.generate(maps.length, (index) {
      return FinancialRecord.fromJson(maps[index]);
    });
  }

  @override
  Future<void> deleteFinancialRecord(int id) async {
    final db = await SqfliteStorage.open();
    await db.delete(
      'financial_records',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
