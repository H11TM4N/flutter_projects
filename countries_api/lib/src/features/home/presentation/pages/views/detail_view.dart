import 'package:countries_api/src/features/home/presentation/components/components.dart';
import 'package:countries_api/src/features/home/presentation/widgets/image_container.dart';
import 'package:countries_api/src/features/home/presentation/widgets/text_wrapper.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';

class CountryDetail extends StatelessWidget {
  final String imageUrl, country, region, subregion, capital, nativeName;
  final int population;
  final String topLevelDomain;
  final List<dynamic> currencies;
  final List<dynamic> languages;
  final List<dynamic> borderCountries;
  const CountryDetail({
    super.key,
    required this.imageUrl,
    required this.country,
    required this.nativeName,
    required this.region,
    required this.subregion,
    required this.capital,
    required this.population,
    required this.topLevelDomain,
    required this.currencies,
    required this.languages,
    required this.borderCountries,
  });

  @override
  Widget build(BuildContext context) {
    List<dynamic> getList({
      required List<dynamic> list,
      required String title,
    }) {
      return list.map((list) => list[title]).toList();
    }

    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20..dx),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomBackButton(),
                    ImageContainer(imageUrl: imageUrl),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20..dy, top: 8..dx),
                      child: Text(
                        country,
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 22..sp),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              head3Text('Native Name: '),
                              bodyText(nativeName),
                            ],
                          ),
                          Row(
                            children: [
                              head3Text('population: '),
                              bodyText(population.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              head3Text('region: '),
                              bodyText(region),
                            ],
                          ),
                          Row(
                            children: [
                              head3Text('Sub Region: '),
                              bodyText(subregion),
                            ],
                          ),
                          Row(
                            children: [
                              head3Text('capital: '),
                              bodyText(capital),
                            ],
                          ),
                          YBox(35..dy),
                          Row(
                            children: [
                              head3Text('Top Level Domain: '),
                              bodyText(region),
                            ],
                          ),
                          Row(
                            children: [
                              head3Text('Currencies: '),
                              Row(
                                children: List.generate(
                                  currencies.length,
                                  (index) => Text(
                                    getList(
                                        list: currencies, title: 'name')[index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              head3Text('Languages: '),
                              currencies.isNotEmpty
                                  ? const Text(
                                      'None',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )
                                  : Row(
                                      children: List.generate(
                                        currencies.length,
                                        (index) => Text(
                                          getList(
                                              list: languages,
                                              title: 'languages')[index],
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                          YBox(35..dy),
                          Text(
                            'Border countries:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18..sp,
                            ),
                          ),
                          YBox(15..dy),
                          Row(
                            children: List.generate(
                              borderCountries.length,
                              (index) => TextWrapper(
                                text: borderCountries[index],
                              ),
                            ),
                          ),
                          YBox(35..dy),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text head3Text(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        height: 2.5,
      ),
    );
  }

  Text bodyText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
