import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../login/login.dart';
// import 'package:login_regest/login.dart';

class addSheet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _addSheetState();
}

class _addSheetState extends State<addSheet> {
  var pric = 0, quant = 0, sum = 0;

  List<String> name = ["", " 50 ثيونتال", "بافلون", "الحتنثان", "jskfj"];
  //price

  Widget builtrow_head1(title) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.red,
        //     blurRadius: 12,
        //     offset: Offset(0, 6),
        //   )
        // ],
      ),
    );
  }

//quantity
  Widget builtrow_head2(title) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.red,
        //     blurRadius: 12,
        //     offset: Offset(0, 6),
        //   )
        // ],
      ),
    );
  }

//items
  Widget builtrow_head3(String title) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        // boxShadow: [
        //   // BoxShadow(
        //   //   color: Colors.red,
        //   //   blurRadius: 12,
        //   //   offset: Offset(0, 6),
        //   )
        // ],
      ),
    );
  }

//iD
  Widget builtrow_head4(String title) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.blueGrey,
        //     blurRadius: 12,
        //     offset: Offset(0, 6),
        //   )
        // ],
      ),
    );
  }

  Widget builtrow_1() {
    return Container(
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      margin: const EdgeInsets.all(1),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          // alignLabelWithHint: true,
          // labelText: " gmail",
          labelStyle: TextStyle(color: Colors.amber, fontSize: 30),
          // hintText: "enter your gmail",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          // helperText: "help enter your gmail with keyboard",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

//quantity
  Widget builtrow_2() {
    return Container(
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      margin: const EdgeInsets.all(1),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          // alignLabelWithHint: true,
          // labelText: " gmail",
          labelStyle: TextStyle(color: Colors.amber, fontSize: 30),
          // hintText: "enter your gmail",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          // helperText: "help enter your gmail with keyboard",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

//items
  Widget builtrow_3(String items) {
    return Container(
      margin: EdgeInsets.all(1),
      height: 50,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          items,
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          border: Border.all(color: Colors.blue)
          // color: Color.fromARGB(255, 180, 131, 204)
          // gradient: LinearGradient(colors: [
          //   Colors.white,
          //   // Colors.white,
          //   Color.fromARGB(255, 178, 150, 255),
          //   Colors.blue,
          //   Colors.blue,
          // ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.blueGrey,
          //     blurRadius: 12,
          //     offset: Offset(0, 6),
          //   )
          // ],
          ),
    );
  }

//iD
  Widget builtrow_4(String id) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          id,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.blueGrey,
        //     blurRadius: 12,
        //     offset: Offset(0, 6),
        //   )
        // ],
      ),
    );
  }

  Widget docSignature_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
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
          labelText: "       doctor",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 132, 33, 149),
              fontSize: 19,
              fontWeight: FontWeight.bold),
          hintText: "a doctor name",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          helperText: "enter the doctor name",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget nurseSignature_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
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
          labelText: "        nurse",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 132, 33, 149),
              fontSize: 19,
              fontWeight: FontWeight.bold),
          hintText: "a nurse name",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          helperText: "enter the nurse name",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget patientSignature_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
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
          labelText: "      patient",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 132, 33, 149),
              fontSize: 18,
              fontWeight: FontWeight.bold),
          hintText: "a patient name",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          helperText: "enter the patient name",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget operation_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
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
          labelText: "     operation",
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 132, 33, 149),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          hintText: "a operation name",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          helperText: "enter the operation name",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget assistSignature_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
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
          labelText: "doctor assistant",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 132, 33, 149),
              fontSize: 17,
              fontWeight: FontWeight.bold),
          hintText: "a assistant name",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          helperText: "enter the assistant name",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget AnestheSignature_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
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
          labelText: "Anesthesiologist",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 132, 33, 149),
              fontSize: 17,
              fontWeight: FontWeight.bold),
          hintText: "a Anesthesiologist name",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          helperText: "enter the Anesthesiologist name",
        ),
        keyboardType: TextInputType.emailAddress,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget Date_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      width: 175,
      height: 60,
      child: ElevatedButton(
        onPressed: _datePicker,
        child: Padding(
          padding: EdgeInsets.only(
            right: 55,
            bottom: 7, /*top: 10*/
          ),
          // bool txt= new _selectedDate!;
          child: Text(
            Dateflag
                ? "${intl.DateFormat.yMd().format(_selectedDate!)}"
                : "pick the Date",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple[700]),
          overlayColor: MaterialStateProperty.all(Colors.blue),
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
        ),
      ),
    );
  }

  Widget ticket_builtrow(/*String title*/) {
    // final iti = title;
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        // autocorrect: true,
        decoration: InputDecoration(
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
          labelText: "ticket numnber",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 132, 33, 149),
              fontSize: 17,
              fontWeight: FontWeight.bold),
          hintText: "a ticket number",
          hintStyle: TextStyle(color: Colors.blueGrey),
          // icon: Icon(Icons.alternate_email),
          helperText: "enter the ticket number",
        ),
        keyboardType: TextInputType.number,
        keyboardAppearance: Brightness.dark,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget confirmButton_builtrow() {
    // final iti = title;
    return Container(
      width: 250,
      child: FloatingActionButton.extended(
        label: const Text("confirm"),
        onPressed: () {},
        icon: const Icon(Icons.send),
        foregroundColor: Colors.lightGreenAccent[600],
        backgroundColor: Colors.green[800],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            topLeft: Radius.circular(55),
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(55),
          ),
          side: BorderSide(color: Colors.green, width: 1),
        ),
        splashColor: Colors.lightGreenAccent[400],
      ),
    );
  }

  Widget exsitButton_builtrow() {
    // final iti = title;
    return Container(
      width: 250,
      child: FloatingActionButton.extended(
        label: const Text("exit"),
        onPressed: () {},
        icon: const Icon(Icons.exit_to_app),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 141, 20, 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            topLeft: Radius.circular(55),
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(55),
          ),
          side: BorderSide(color: Color.fromARGB(255, 141, 20, 20), width: 2),
        ),
        splashColor: Color.fromARGB(255, 255, 17, 0),
      ),
    );
  }

  //date
  DateTime? _selectedDate;
  bool Dateflag = false;

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
        title: const Text(
          "operation sheet",
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, i) {
          return i == name.length - 1
              ? Container(
                  margin: EdgeInsets.only(top: 200, bottom: 50),
                  child: Table(
                    children: [
                      // TableRow(children: [
                      //   //hereeeeeeeeeeeeeeeeeeeeeeeeee
                      //   builtrow_head1("name"),
                      //   builtrow_head2("specialist"),
                      //   // builtrow_head3("ID")
                      // ]),
                      TableRow(children: [
                        //hereeeeeeeeeeeeeeeeeeeeeeeeee
                        patientSignature_builtrow(),
                        operation_builtrow(),
                        // builtrow_4(i.toString()),
                      ]),
                      TableRow(children: [
                        //hereeeeeeeeeeeeeeeeeeeeeeeeee
                        docSignature_builtrow(),
                        assistSignature_builtrow(),
                        // builtrow_4(i.toString()),
                      ]),
                      TableRow(children: [
                        //hereeeeeeeeeeeeeeeeeeeeeeeeee
                        AnestheSignature_builtrow(),
                        nurseSignature_builtrow(),
                        // builtrow_4(i.toString()),
                      ]),
                      TableRow(children: [
                        ticket_builtrow(),
                        Date_builtrow(),
                      ]),
                      TableRow(children: [
                        confirmButton_builtrow(),
                        exsitButton_builtrow(),
                      ])
                    ],
                  ),
                )
              : Table(
                  children: [
                    i == 0
                        ? TableRow(children: [
                            //hereeeeeeeeeeeeeeeeeeeeeeeeee
                            builtrow_head1("price"),
                            builtrow_head2("count"),
                            builtrow_head3("name"),
                            builtrow_head4("ID"),
                          ])
                        : TableRow(children: [
                            //hereeeeeeeeeeeeeeeeeeeeeeeeee
                            builtrow_1(),
                            builtrow_2(),
                            builtrow_3(name[i]),
                            builtrow_4(i.toString()),
                          ]),
                  ],
                );
        },
      ),
    );
  }
}
