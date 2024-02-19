import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    const regions = ['Africa', 'America', 'Asia', 'Europe', 'Oceania'];
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(color: Colors.transparent)),
      // constraints: BoxConstraints.tight(const Size(300, 30)),

      child: DropdownMenu(
        hintText: 'Filter by region',
        textStyle: TextStyle(fontSize: 13..sp),
        width: 200,
        dropdownMenuEntries: List.generate(
          regions.length,
          (index) => DropdownMenuEntry(
            label: regions[index],
            value: regions[index],
          ),
        ),
      ),
    );
  }
}
