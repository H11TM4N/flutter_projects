import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.only(top: 30..dy, bottom: 40..dy),
      child: BounceInAnimation(
        onTap: () {
          Get.back();
        },
        child: Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 6..dx, horizontal: 18..dy),
            decoration: BoxDecoration(
              color: theme.primary,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 18..dx,
                ),
                XBox(8..dx),
                const Text(
                  'Back',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
