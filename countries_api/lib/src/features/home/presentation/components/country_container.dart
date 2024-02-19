import 'package:cached_network_image/cached_network_image.dart';
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15..dx)
          .copyWith(bottom: 18..dy, top: 20..dy),
      decoration: BoxDecoration(
        color: theme.primary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          SizedBox(
            child: CachedNetworkImage(
              imageUrl: flagImage,
              progressIndicatorBuilder: (context, url, download) {
                if (download.progress != null) {
                  final percent = download.progress! * 100;
                  return Text('$percent done loading');
                }
                return Text('loaded $url');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20..dy, horizontal: 15..dx),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22..sp,
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
          ),
        ],
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
