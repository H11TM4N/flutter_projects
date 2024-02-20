import 'package:countries_api/src/features/home/presentation/components/components.dart';
import 'package:countries_api/src/features/home/services/fetch_json_data.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountryList extends HookWidget {
  final CurrentScreen currentScreen;
  const CountryList({
    super.key,
    this.currentScreen = CurrentScreen.mobile,
  });

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

    return SizedBox(
      height: 600,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: currentScreen == CurrentScreen.mobile
              ? 1
              : currentScreen == CurrentScreen.tablet
                  ? 2
                  : currentScreen == CurrentScreen.iPad
                      ? 3
                      : 4,
        ),
        children: List.generate(
          countries.value.length,
          (index) => BounceInAnimation(
            onTap: () {},
            child: CountryContainer(
              flagImage: countries.value[index]['flags']['png'],
              country: countries.value[index]['name'],
              population: countries.value[index]['population'],
              region: countries.value[index]['region'],
              capital: countries.value[index]['capital'] ?? 'No capital',
            ),
          ),
        ),
      ),
    );
  }
}
