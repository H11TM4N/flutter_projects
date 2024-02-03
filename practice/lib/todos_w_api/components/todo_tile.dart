import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoTile extends StatelessWidget {
  final int userId;
  final int id;
  final String title;
  final bool isCompleted;
  const TodoTile({
    super.key,
    required this.userId,
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = GoogleFonts.montserrat(
      fontWeight: FontWeight.w700,
    );
    final textStyle = GoogleFonts.montserrat();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(left: 17, bottom: 7, right: 7, top: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [
              Color(0xff00AFB9),
              Color(0xff0081A7),
            ],
          ),
        ),
        // height: 100,
        // alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('User ', style: defaultStyle),
                Text('$userId', style: textStyle),
              ],
            ),
            Row(
              children: [
                Text('id: ', style: defaultStyle),
                Text('$id', style: textStyle),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text('title: ', style: defaultStyle),
                  Text(title, style: textStyle),
                ],
              ),
            ),
            Row(
              children: [
                Text('completed: $isCompleted', style: defaultStyle),
                Text('completed: $isCompleted', style: textStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
