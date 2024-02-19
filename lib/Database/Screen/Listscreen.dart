import 'package:flutter/material.dart';

import '../dbmange.dart';
import '../dbmodel.dart';

class Listscreen extends StatefulWidget {
  const Listscreen({super.key});

  @override
  State<Listscreen> createState() => _ListscreenState();
}

class _ListscreenState extends State<Listscreen> {
  @override
  void initState() {
    super.initState();
    getAllData();
  }

  int count = 0;
  List<UserModel> userList = [];
  bool showSuggestions = false;
  final dbManagar = DatabaseManager();
  final firstNameController = TextEditingController();

  Future<void> getAllData() async {
    userList.addAll(await dbManagar.getUser());
    setState(() {});
  }

  Future<void> filter(String enteredword) async {
      if (enteredword.length >= 1) {
        showSuggestions = true;
        List<UserModel> results = await dbManagar.findUser(enteredword);
        if (showSuggestions) {
          results = results.reversed.toList();
        }
        setState(() {
          userList = results;
        });
      } else {
        userList.clear();
      }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listscreen'),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, true);
              }),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      hintText: "Enter First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {
                    filter(firstNameController.text);
                  },
                 child: Text("Search"),
                )
              ],
            ),
            Expanded(
              child: userList.isNotEmpty ?
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blueGrey,
                      child: ListTile(
                        leading: Text(userList[index].id.toString()),
                        title: Text(userList[index].fName.toString()),
                        subtitle: Text(userList[index].lName.toString()),
                        trailing: Text(userList[index].email.toString()),
                      ),
                    );
                  })
                  : Text("No Data Fetch",style: TextStyle(fontSize: 30),)
            )
          ],
        ));
  }
}