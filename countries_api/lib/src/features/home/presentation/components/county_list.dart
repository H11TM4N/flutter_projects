import 'package:countries_api/src/features/home/presentation/components/components.dart';
import 'package:countries_api/src/features/home/services/fetch_json_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountryList extends HookWidget {
  const CountryList({super.key});

  @override
  Widget build(BuildContext context) {
    final countries = useState<List>([]);

    void readJson() async {
      countries.value = await AppServices.readJsonData();
    }

    useEffect(() {
      readJson();
      return null;
    }, []);

    return Expanded(
      child: ListView.builder(
        itemCount: countries.value.length,
        itemBuilder: (context, index) => CountryContainer(
          flagImage: countries.value[index]['flags']['png'],
          country: countries.value[index]['name'],
          population: countries.value[index]['population'],
          region: countries.value[index]['region'],
          capital: countries.value[index]['capital'],
        ),
      ),
    );
  }
}
