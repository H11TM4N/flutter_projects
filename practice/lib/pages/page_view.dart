import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:practice/pages/dummy_pages/page1.dart';
import 'package:practice/pages/dummy_pages/page2.dart';
import 'package:practice/pages/dummy_pages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPageView extends HookWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(
      viewportFraction: 1,
    );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: PageView(
                controller: pageController,
                // allowImplicitScrolling: false,
                children: const [
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                ],
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: const WormEffect(),
          ),
        ],
      ),
    );
  }
}
