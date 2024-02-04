import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/src/shared/widgets/animated_column.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPage extends HookWidget {
  const UrlLauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final callController = useTextEditingController();
    final urlController = useTextEditingController();
    final buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        minimumSize: Size(MediaQuery.of(context).size.width, 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(17));
    final textStyle = GoogleFonts.montserrat(
        color: Colors.white, fontWeight: FontWeight.bold);

    final websiteUrl = useState<Uri>(Uri());

    useEffect(() {
      urlController.addListener(() {
        websiteUrl.value = Uri.parse('https://${urlController.text}');
      });
      return null;
    }, [urlController]);

    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Url Launcher',
        style: GoogleFonts.montserrat(),
      )),
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
              child: Text('Make phone call', style: textStyle),
            ),
            const SizedBox(height: 50),
            TextField(
              controller: urlController,
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
              child: Text('Launch in browser', style: textStyle),
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
              child: Text('Launch in app', style: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
