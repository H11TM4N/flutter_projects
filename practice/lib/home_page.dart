import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practice/models/pizza.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pizzaString = '';
  List pizzaList = [];

  @override
  void initState() {
    super.initState();
    loadPizzaList();
  }

  Future<void> loadPizzaList() async {
    pizzaString = await DefaultAssetBundle.of(context)
        .loadString('assets/pizza_list.json');
    setState(() {
      pizzaList = jsonDecode(pizzaString);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Pizza> myPizzas = [];
    for (var pizza in pizzaList) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jerry'),
      ),
      body: ListView.builder(
        itemCount: myPizzas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myPizzas[index].pizzaName),
            subtitle: Text(myPizzas[index].description),
          );
        },
      ),
    );
  }
}
