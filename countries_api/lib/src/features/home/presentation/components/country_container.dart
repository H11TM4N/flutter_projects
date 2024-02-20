import 'package:countries_api/src/features/home/presentation/widgets/image_container.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';

class CountryContainer extends StatelessWidget {
  final String flagImage, country, region, capital;
  final int population;

  const CountryContainer({
    super.key,
    required this.flagImage,
    required this.country,
    required this.population,
    required this.region,
    required this.capital,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15..dx, vertical: 8..dy),
      child: Container(
        decoration: BoxDecoration(
          color: theme.primary,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageContainer(imageUrl: flagImage),
            YBox(10..dy),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      country,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 22..sp,
                      ),
                    ),
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
                      head3Text('capital: '),
                      bodyText(capital),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Text head3Text(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        // fontSize: 22..sp,
      ),
    );
  }

  Text bodyText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        // fontSize: 22..sp,
      ),
    );
  }
}
