import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';

class dashboard extends StatefulWidget {

  //String users = '';
  double price = 0.0;
  dashboard({Key? key, required this.price}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

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
      body: Container(
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
        margin: EdgeInsets.fromLTRB(125,80,125,0),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ]
        ),
        child:Column(
          children: [
            Text(
              'Prix estimé',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                  color: Colors.grey.shade600
              ),
            ),
            SizedBox(height:30),
            Text(
              '${widget.price} €/mois TTC',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 50
              ),
            ),
            SizedBox(height:70),
            Text(
              "Attention: le prix repéresenté ci-dessus est une estimation et ne repésente en aucun cas un coût réel!",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: Colors.grey.shade600
              ),
            )
          ],
        )
      ),
    );
  }
}

