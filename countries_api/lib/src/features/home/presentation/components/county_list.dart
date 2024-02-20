import 'package:countries_api/src/features/home/presentation/components/components.dart';
import 'package:countries_api/src/features/home/presentation/pages/views/detail_view.dart';
import 'package:countries_api/src/features/home/services/fetch_json_data.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

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
          (index) {
            final country = countries.value[index];
            return BounceInAnimation(
              onTap: () {
                Get.to(
                  () => CountryDetail(
                    imageUrl: country['flags']['png'],
                    country: country['name'],
                    nativeName: country['nativeName'],
                    region: country['region'],
                    subregion: country['subregion'],
                    capital: country['capital'] ?? 'No capital',
                    population: country['population'],
                    topLevelDomain: country['topLevelDomain'][0],
                    currencies: country['currencies'] ?? [''],
                    languages: country['languages'],
                    borderCountries: country['borders'] ?? [''],
                  ),
                );
              },
              child: CountryContainer(
                flagImage: country['flags']['png'],
                country: country['name'],
                population: country['population'],
                region: country['region'],
                capital: country['capital'] ?? 'No capital',
              ),
            );
          },
        ),
      ),
    );
  }
}
