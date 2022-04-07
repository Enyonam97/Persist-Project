import 'package:path/path.dart';
import 'package:plant/database.dart';
import 'package:plant/user.dart';
import 'package:sqflite/sqflite.dart';

class DBOperations {
  Future<void> insertuser(user user) async {
    // Get a reference to the database.
    final db = await database().initializeDB();

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'user',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<user>> getuser() async {
    // Get a reference to the database.
    final db = await database().initializeDB();

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('user');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return user(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  }
}
