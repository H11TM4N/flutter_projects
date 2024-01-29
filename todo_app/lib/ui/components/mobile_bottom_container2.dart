import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/ui/theme/colors.dart';

class MobileBottomContainer2 extends StatefulWidget {
  const MobileBottomContainer2({super.key});

  @override
  State<MobileBottomContainer2> createState() => _MobileBottomContainer2State();
}

class _MobileBottomContainer2State extends State<MobileBottomContainer2> {
  final List<String> _textTitles = ['All', 'Actice', 'Completed'];
  late String _selectedString;

  @override
  void initState() {
    super.initState();
    _selectedString = _textTitles[0];
  }

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context).colorScheme;
    // final isHovered = useState<bool>(false);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 18,
          bottom: 18,
        ),
        child: Center(
          child: SizedBox(
            height: 20,
            width: MediaQuery.of(context).size.width * .20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _textTitles.length,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (event) {},
                  onExit: (event) {},
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedString = _textTitles[index];
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        _textTitles[index],
                        style: GoogleFonts.josefinSans(
                          color: _selectedString == _textTitles[index]
                              ? checkboxGradient[0]
                              : darkGrayishBlue2.toColor(),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
