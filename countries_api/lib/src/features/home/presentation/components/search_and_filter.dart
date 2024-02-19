import 'package:countries_api/src/features/home/presentation/widgets/widgets.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchAndFilter extends HookWidget {
  final bool isMobileOrTablet;
  const SearchAndFilter({
    super.key,
    required this.isMobileOrTablet,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    if (isMobileOrTablet) {
      return Column(
        children: [
          const YBox(20),
          SizedBox(
            width: 300,
            child: CustomTextField(controller: controller),
          ),
          const YBox(30),
          const FilterContainer(),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const YBox(20),
          SizedBox(
            width: 300,
            child: CustomTextField(controller: controller),
          ),
          const XBox(30),
          const FilterContainer(),
        ],
      );
    }
  }
}
