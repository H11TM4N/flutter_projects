import 'package:countries_api/src/features/home/presentation/widgets/widgets.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchAndFilter extends HookWidget {
  final bool isMobile;
  const SearchAndFilter({
    super.key,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    if (isMobile) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15..dx),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30..dy),
              child: CustomTextField(controller: controller),
            ),
            const FilterContainer(),
          ],
        ),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
