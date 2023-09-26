import 'package:practice/API/photos_apii/photos_api.dart';
import 'package:practice/Animations/custom_painter_animations/bouncing_ball_animation.dart';
import 'package:practice/Animations/explicit_animations/list_animation.dart';
import 'package:practice/Animations/explicit_animations/loading_animation.dart';
import 'package:practice/Bloc/Login_screen/login_screen.dart';
import 'package:practice/home_page.dart';
import 'package:practice/Animations/implicit_animations/animation_practice.dart';
import 'package:flutter/material.dart';
import 'package:practice/Animations/implicit_animations/button_conversion.dart';
import 'package:practice/Animations/implicit_animations/pulsating_circle.dart';
import 'package:practice/Animations/page_route_builder_animation/splash_animation.dart';
import 'Animations/explicit_animations/login_animation.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'page1': (context) => const AnimationContainer(),
        'page2': (context) => const ButtonConversion(),
        'page3': (context) => const PulsatingCircle(),
        'page4': (context) => const LoginScreenAnimation(),
        'page5': (context) => const ListAnimation(),
        'page6': (context) => const RadialProgressAnimation(
              progress: 0.65,
              color: Colors.blue,
            ),
        'page7': (context) => const SplashAnimation(),
        'page8': (context) => const BouncingBallAnimation(),
        'page11': (context) => const PhotosApi(),
        'page21':(context) => const LoginScreen(),
      },
    );
  }
}
