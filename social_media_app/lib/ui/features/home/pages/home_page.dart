import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_media_app/common/widgets/custom_listtile.dart';
import 'package:social_media_app/logic/services/services.dart';
import 'package:social_media_app/ui/features/pages.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class HomePage extends HookWidget {
  static const routeName = '/home page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final databaseService = PostService();
    final postTextController = useTextEditingController();

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: const Text('WORLD CHAT'),
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
                  databaseService.addPost(postText: postTextController.text);
                  postTextController.clear();
                },
              ),
            ],
          ),
        ),
        StreamBuilder(
          stream: databaseService.getUserPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final posts = snapshot.data!.docs;

            if (snapshot.data == null || posts.isEmpty) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text('No posts...'),
                ),
              );
            }
            return Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];

                  String message = post['postText'];
                  String userEmail = post['userEmail'];
                  //* Timestamp timeStamp = post['TimeStamp'];

                  return CustomListTile(
                    title: message,
                    subtitle: userEmail,
                  );
                },
              ),
            );
          },
        )
      ]),
      drawer: const DrawerView(),
    );
  }
}
