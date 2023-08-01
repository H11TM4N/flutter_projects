import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'Please enter the amount in USD',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
