import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:practice/src/shared/widgets/animated_column.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPage extends HookWidget {
  const UrlLauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final callController = useTextEditingController();
    final buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        minimumSize: Size(MediaQuery.of(context).size.width, 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(17));

    final websiteUrl = useState<Uri>(Uri.parse('https://animepahe.com'));

    return Scaffold(
      appBar: AppBar(title: const Text('Url Launcher')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppAnimatedColumn(
          children: [
            TextField(
              controller: callController,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final url = Uri(scheme: 'tel', path: callController.text);
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                }
              },
              style: buttonStyle,
              child: const Text('Make phone call'),
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: const Text('https://animepahe.com'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                launchUrl(
                  websiteUrl.value,
                  mode: LaunchMode.externalApplication,
                );
              },
              style: buttonStyle,
              child: const Text('Launch in browser'),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                launchUrl(
                  websiteUrl.value,
                  mode: LaunchMode.inAppWebView,
                );
              },
              style: buttonStyle,
              child: const Text('Launch in app'),
            ),
          ],
        ),
      ),
    );
  }
}
