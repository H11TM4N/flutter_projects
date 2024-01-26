import 'package:advice_generator/UI/components/icon_filler.dart';
import 'package:advice_generator/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AdviceContainer extends StatelessWidget {
  final bool isMobile;
  const AdviceContainer({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: !isMobile ? const EdgeInsets.symmetric(horizontal: 100) : null,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: darkGreyishBlue.toColor(),
        borderRadius: BorderRadius.circular(12),
      ),
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Advice #117',
            style: GoogleFonts.manrope(
              color: neonGreen.toColor(),
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '"It is easy to sit up and take, whats difficult is getting up and taking action"',
            style: GoogleFonts.manrope(
              color: lightCyan.toColor(),
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          SvgPicture.asset(
              isMobile
                  ? 'assets/svgs/pattern-divider-mobile.svg'
                  : 'assets/svgs/pattern-divider-desktop.svg',
              semanticsLabel: 'Acme Logo'),
          const SizedBox(height: 20),
          IconFiller(
            onTap: () {},
            child: SvgPicture.asset('assets/svgs/icon-dice.svg'),
          ),
        ],
      ),
    );
  }
}
