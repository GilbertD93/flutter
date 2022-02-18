import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';

class dashboard extends StatefulWidget {

  String users = '';
  dashboard({Key? key, required this.users}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  //Map jsonTest = {'Nombres_utilisateurs' : '20'};
  /**getData() async {
    var responseGet = await http.get(
        Uri.parse("http://127.0.0.1:5000/test"));

    final decoded = json.decode(responseGet.body) as Map<String, dynamic>;

    setState(() {
      users = decoded["Nombres_utilisateurs"];
    });
  }**/

 /** decode() {
    var json = jsonEncode(jsonTest);
    final decoded = jsonDecode(json) as Map<String, dynamic>;
    setState(() {
      users = decoded["Nombres_utilisateurs"];
    });
  }**/

  /**@override
  void initState() {
    // TODO: implement build
    super.initState();
    getData();
    //decode();
  }**/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Estimacloud",
          style: TextStyle(
            fontFamily: 'BebasNeue',
            fontSize: 50,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(123,44,191,1.0),

      ),
      body: Center(
 /**       child: CircularPercentIndicator(
          animation: true,
          animationDuration: 750,
          radius: 200,
          lineWidth: 30,
          percent: 0.4,
          progressColor: Color.fromRGBO(123, 44, 191, 1.0),
          backgroundColor: Colors.deepPurple.shade100,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(
            '40%',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 50
            ),
          ),
        ),**/
        child: Text(
          '${widget.users} utilisateurs',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 50
          ),
        ),
      ),
    );
  }
}

