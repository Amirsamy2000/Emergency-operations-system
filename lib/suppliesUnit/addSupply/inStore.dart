import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:firebase_core/firebase_core.dart';

var mood = const ColorScheme.highContrastDark();
var dark = true;

var str = "";

// var icon = const Icon(Icons.visibility);
// var invisicon = const Icon(Icons.visibility_off);

final String secondColor = "purple";

class addsuppliesInStoreStatefull extends StatefulWidget {
  @override
  _addsuppliesInStoreState createState() => _addsuppliesInStoreState();
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

class _addsuppliesInStoreState extends State<addsuppliesInStoreStatefull> {
  var name = TextEditingController();
  var quantity = TextEditingController();
  var code = TextEditingController();
  var details = TextEditingController();
  var Date;

  CollectionReference user =
      FirebaseFirestore.instance.collection('medicalsupplyStore');
  AddDateSteore(name, quantity, code, details, Date) async {
    user.add({
      'Name': name,
      'quantity': quantity,
      'code': code,
      'details': details,
      'Date': Date
    });
  }

  // def() {
  //   print("object");
  // }
  DateTime? _selectedDate;
  bool Dateflag = false;

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
        title: const Text("add quantity in store",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.purple, fontSize: 20)),
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
                      hintText: "wrtie the supply's name",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      hintTextDirection: TextDirection.ltr,
                      icon: Icon(Icons.add_chart),
                      helperText: "write the supply name",
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
                        labelStyle:
                            TextStyle(color: Colors.purple, fontSize: 30),
                        hintText: "write a supply's quantity",
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        icon: Icon(Icons.add_to_photos_sharp),
                        helperText: "write a supply's quantity",
                        // prefix: Text("+02  "),
                      ),
                      keyboardType: TextInputType.number,
                      keyboardAppearance: Brightness.dark,
                      controller: quantity
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
                      hintText: "write a supply's code",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      icon: Icon(Icons.qr_code),
                      helperText: "write a supply's code",

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
                      hintText: "write details of supply",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      icon: Icon(Icons.details),
                      helperText: "write details of supply ,if you want",
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
                              padding: const EdgeInsets.only(
                                right: 55,
                                bottom: 7, /*top: 10*/
                              ),
                              // bool txt= new _selectedDate!;
                              child: Text(
                                Dateflag
                                    ? "${intl.DateFormat.yMd().format(_selectedDate!)}"
                                    : "pick the Date",
                                style: TextStyle(fontSize: 30),
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
                    await AddDateSteore(name.text, num.parse(quantity.text),
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
