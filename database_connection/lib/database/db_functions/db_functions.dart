import 'package:database_connection/models/loginModel.dart';
import 'package:sqflite/sqflite.dart';

late Database db;
// ignore: non_constant_identifier_names
Future<void> OpenLoginDB() async {
  db = await openDatabase(
    'logindb',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE logindb (id INTEGER PRIMARY KEY, email TEXT, password TEXT) ');
    },
  );
}

Future<void> inserdata(Loginmodel value) async {
  await db.rawInsert('INSERT INTO logindb (email, password) VALUES(?, ?)',
      [value.email, value.password]);
}

Future getdata() async {
  final result = await db.rawQuery('SELECT * FROM logindb');
  return result;
}

Future<void> cleardata() async {
  await db.rawDelete('DELETE FROM logindb');
}
