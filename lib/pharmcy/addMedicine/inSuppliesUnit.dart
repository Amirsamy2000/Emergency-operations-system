import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;


var mood = const ColorScheme.highContrastDark();
var dark = true;
var mycontroler = TextEditingController();
var str = "";

// var icon = const Icon(Icons.visibility);
// var invisicon = const Icon(Icons.visibility_off);

final String secondColor = "purple";

class addMedicinInsuppliesStatefull extends StatefulWidget {
  @override
  _addMedicinInsuppliesState createState() => _addMedicinInsuppliesState();
}
// class selectedDate{
//   DateTime ?Date = null;
//   bool flag = false;
//   selectedDate(this.Date,this.flag);
//   getdata(){
//     return Date;
//   }
//   getflag(){
//     return flag;
//   }
// }

class _addMedicinInsuppliesState extends State<addMedicinInsuppliesStatefull> {
  // def() {
  //   print("object");
  // }
  DateTime? _selectedDate;
  bool Dateflag = false;

  var name = TextEditingController();
  var quantity = TextEditingController();
  var code = TextEditingController();
  var details = TextEditingController();
  String? Date;

  CollectionReference user1 =
      FirebaseFirestore.instance.collection('medicineStore');
  CollectionReference user2 =
      FirebaseFirestore.instance.collection('medicalsupplyUnit');

  UpdateUnit(name, quantity, code, details, Date) async {
    String id = '';

    user1.where('Name', isEqualTo: name).get().then((value) {
      value.docs.forEach((element) {
        var data = element.data() as Map<String, dynamic>;
        if (data['Name'] == name) {
          setState(() {
            id = element.id;
            print(data['quantity']);
            print("================================");
            user1
                .doc(id)
                .update({'quantity': data['quantity'] - num.parse(quantity)});
            print(id);

            print("================================");

            print("================================");
          });
        }
      });
    });

    await user2.add({
      'Name': name,
      'quantity': num.parse(quantity),
      'code': code,
      'details': details,
      'Date': Date
    });
  }

  // bool _DateFlag = false;
  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime.now(),
    ).then((value) {
      setState(() {
        if (value != null) {
          _selectedDate = value;
          Date = value.toString();
          Dateflag = true;
        }
      });
    });
  }

  var passwordvisb = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add quantity in supplies unit",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.purple, fontSize: 19.5)),
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            color: dark ? Color.fromRGBO(48, 48, 48, 255) : Colors.grey[800],
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                    // autocorrect: true,
                    decoration: const InputDecoration(
                      // alignLabelWithHint: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      labelText: " Name",
                      // label: Text("Name"),
                      labelStyle: TextStyle(color: Colors.purple, fontSize: 30),
                      hintText: "wrtie the medicine's name",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      hintTextDirection: TextDirection.ltr,
                      icon: Icon(Icons.add_chart),
                      helperText: "write the medicine name",
                      // fillColor: Colors.red,
                      // errorText: "error",
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    controller: name,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                    textAlign: TextAlign.center,
                    // autocorrect: true,
                    decoration: const InputDecoration(
                      // alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      labelText: " quantity",
                      labelStyle: TextStyle(color: Colors.purple, fontSize: 30),
                      hintText: "write a medicine's quantity",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      icon: Icon(Icons.add_to_photos_sharp),
                      helperText: "write a medicine's quantity",
                      // prefix: Text("+02  "),
                    ),
                    keyboardType: TextInputType.number,
                    keyboardAppearance: Brightness.dark,
                    controller: quantity,
                    //textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                    textAlign: TextAlign.center,
                    // autocorrect: true,
                    decoration: const InputDecoration(
                      // alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      labelText: " code",
                      labelStyle: TextStyle(color: Colors.purple, fontSize: 30),
                      hintText: "write a medicine's code",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      icon: Icon(Icons.qr_code),
                      helperText: "write a medicine's code",
                      // prefix: Text("+02  "),
                    ),
                    keyboardType: TextInputType.number,
                    keyboardAppearance: Brightness.dark,
                    controller: code,
                    //textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                    // autocorrect: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      // alignLabelWithHint: true,
                      labelText: " details",
                      labelStyle: TextStyle(color: Colors.purple, fontSize: 30),
                      hintText: "write details of medicine",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      icon: Icon(Icons.details),
                      helperText: "write details of medicine ,if you want",
                    ),
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    textAlign: TextAlign.center,
                    controller: details,
                  ),
                ),
                Container(
                  width: 800,
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.date_range),
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: _datePicker,
                          child: Padding(
                              padding: EdgeInsets.only(
                                right: 60,
                                bottom: 7, /*top: 10*/
                              ),
                              // bool txt= new _selectedDate!;
                              child: Text(
                                Dateflag
                                    ? "${intl.DateFormat.yMd().format(_selectedDate!)}"
                                    : "pick the Date",
                                style: TextStyle(
                                    fontSize: 27.5,
                                    fontStyle: FontStyle.normal),
                              )),
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.purple[200]),
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(40),
                                  bottomRight: Radius.circular(20),
                                ),
                                side: BorderSide(color: Colors.grey, width: 1),
                              ),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.purple),
                            backgroundColor: MaterialStateProperty.all(
                                dark ? Colors.grey[800] : Colors.purple[100]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () async {
                    await UpdateUnit(name.text, quantity.text,
                        num.parse(code.text), details.text, Date);
                    setState(() {
                      name = TextEditingController();
                      quantity = TextEditingController();
                      code = TextEditingController();
                      details = TextEditingController();
                      Date;
                    });
                  },
                  icon: const Icon(Icons.add_task_sharp),
                  label: const Text("Done"),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                ),
                IconButton(
                  onPressed: () => exit(0),
                  icon: const Icon(Icons.healing),
                ),
                Text("$str"),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dark = !dark;
          });
        },
        child:
            dark ? const Icon(Icons.light_mode) : const Icon(Icons.dark_mode),
        highlightElevation: 45, //note this
        backgroundColor: Colors.purple,
      ),
    );
  }
}
