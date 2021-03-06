import 'package:flutter/material.dart';
import 'package:plant/database.dart';
import 'package:plant/dboperations.dart';
import 'package:plant/homepage.dart';
import 'package:plant/login.dart';
import 'package:plant/signup.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:plant/user.dart';

void main() async {
  // Avoid errors caused by flutter upgrade.
// Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
// Open the database and store the reference.

  // Define a function that inserts dogs into the database

// Create a Dog and add it to the dogs table
  var kwesi = const user(
    id: 0,
    name: 'Kwesi',
    age: 35,
  );

  await DBOperations().insertuser(kwesi);
// A method that retrieves all the dogs from the dogs table.

// Now, use the method above to retrieve all the dogs.
  print(await DBOperations().getuser()); // Prints a list that include Fido.
  var isLoggedIn = await DBOperations().getuser();
  if (isLoggedIn.length > 0) {
    //Route to home page if there is data in the db
    runApp(MaterialApp(home: MyHomePage()));
  } else {
    //Route to login if there is no data
    runApp(MaterialApp(home: LoginPage()));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.blueGrey[700] and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const MyScaffold());
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/casey-horner-.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'The best app for your plants',
                style: TextStyle(color: Colors.white, fontSize: 64),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                  bottom: MediaQuery.of(context).size.height * 0.04),
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ),
                    );
                  },
                  child: const Text('Sign Up',
                      style: TextStyle(
                          color: Color(0xff2EB886),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.02),
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xff2EB886)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
