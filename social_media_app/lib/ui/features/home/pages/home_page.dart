import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_media_app/ui/features/home/controllers/post_controller.dart';
import 'package:social_media_app/ui/features/pages.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class HomePage extends HookWidget {
  static const routeName = '/home page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final postController = PostController();
    final postTextController = useTextEditingController();
    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.transparent,
        foregroundColor: theme.inversePrimary,
        elevation: 0,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: CustomTextfield(
                  hintText: 'Say something..',
                  isObscure: false,
                  controller: postTextController,
                ),
              ),
              PostButton(
                onTap: () {
                  postController.postMessage(postTextController.text);
                },
              ),
            ],
          ),
        ),
      ]),
      drawer: const DrawerView(),
    );
  }
}
