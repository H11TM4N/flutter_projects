import 'package:calculator_app/bottom_theme.dart';
import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '0',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 100),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonAdd(text: 'AC', color1: Colors.white, color2: Colors.green),
              ButtonAdd(text: '%', color1: Colors.white, color2: Colors.blue),
              ButtonAdd(text: 'DEL', color1: Colors.white, color2: Colors.blue),
              ButtonAdd(text: '/', color1: Colors.white, color2: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonAdd(text: '7', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '8', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '9', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: 'x', color1: Colors.white, color2: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonAdd(text: '4', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '5', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '6', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '--', color1: Colors.white, color2: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonAdd(text: '5', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '4', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '3', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '+', color1: Colors.white, color2: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonAdd(text: '00', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '0', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '.', color1: Colors.white, color2: Colors.blueGrey),
              ButtonAdd(text: '=', color1: Colors.white, color2: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
