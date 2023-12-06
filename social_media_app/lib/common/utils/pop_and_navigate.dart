import 'package:flutter/material.dart';

popAndNavigate(BuildContext context, String routeName) {
  Navigator.pop(context);

  Navigator.pushNamed(context, routeName);
}
