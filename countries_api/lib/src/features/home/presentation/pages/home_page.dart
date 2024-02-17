import 'package:countries_api/src/features/home/models/models.dart';
import 'package:countries_api/src/features/home/services/fetch_json_data.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final countries = useState<List<Country>>([]);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Jeremiah',
        ),
      ),
      body: Column(
        children: [
          countries.value.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    itemCount: countries.value.length,
                    itemBuilder: (context, index) {
                      return Card(
                          // key: ValueKey(_countries[index].numericCode),
                          margin: const EdgeInsets.all(10),
                          color: Colors.amber.shade100,
                          child: Text(countries.value[index].name));
                    },
                  ),
                )
              : ElevatedButton(
                  onPressed: () {
                    ReadJsonFile.readJsonData(path: 'assets/data.json')
                        .then((value) {
                      final parsedCountries = value
                          .map((json) => Country.fromJson(json))
                          .toList(); // Map JSON data to List<Country>
                      countries.value = parsedCountries;
                    });
                  },
                  child: const Center(
                    child: Text(
                      "Load Json",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
