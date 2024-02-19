import 'package:flutter/material.dart';
import 'package:practic/Database/Screen/Listscreen.dart';
import 'package:practic/Database/dbmange.dart';
import 'package:practic/Database/dbmodel.dart';
import 'package:sqflite/sqflite.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Database? database;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Listscreen()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.greenAccent[100],
              // child: SizedBox(
              //   height: 400,
              //   width: 350,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("First Name :-", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      hintText: "Enter First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      Text("Last Name :-", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      hintText: "Enter Last Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      Text("Email :-", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter Email id",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    onPressed: () async {
                      final std = UserModel(
                          id: 0,
                          fName: firstNameController.text,
                          lName: lastNameController.text,
                          email: emailController.text);

                      final dbManagar = DatabaseManager();
                      await dbManagar.insertUser(std);
                      await dbManagar.getUser();

                      firstNameController.clear();
                      lastNameController.clear();
                      emailController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent, // Background color
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 30, color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
