import 'package:advice_generator/UI/components/icon_filler.dart';
import 'package:advice_generator/UI/components/loading_widget.dart';
import 'package:advice_generator/common/colors.dart';
import 'package:advice_generator/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AdviceContainer extends StatefulWidget {
  final bool isMobile;
  const AdviceContainer({super.key, required this.isMobile});

  @override
  State<AdviceContainer> createState() => _AdviceContainerState();
}

class _AdviceContainerState extends State<AdviceContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: !widget.isMobile
              ? const EdgeInsets.symmetric(horizontal: 100)
              : null,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: darkGreyishBlue.toColor(),
            borderRadius: BorderRadius.circular(12),
          ),
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          child: FutureBuilder(
            future: ApiService.getAdviceData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  final randomAdvice = snapshot.data!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '#${randomAdvice.fold((l) => 'Error', (r) => r['id'])}',
                        style: GoogleFonts.manrope(
                          color: neonGreen.toColor(),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '“${randomAdvice.fold((l) => 'An unexpected error occurred', (r) => r['advice'])}”',
                        style: GoogleFonts.manrope(
                          color: lightCyan.toColor(),
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      SvgPicture.asset(
                          widget.isMobile
                              ? 'assets/svgs/pattern-divider-mobile.svg'
                              : 'assets/svgs/pattern-divider-desktop.svg',
                          semanticsLabel: 'Acme Logo'),
                      const SizedBox(height: 60),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return ErrorWidget(snapshot.error.toString());
                }
              }
              return const LoadingWidget();
            },
          ),
        ),
        Positioned(
          bottom: -30,
          child: IconFiller(
            onTap: () {
              setState(() {
                ApiService.getAdviceData();
              });
            },
            child: SvgPicture.asset('assets/svgs/icon-dice.svg'),
          ),
        ),
      ],
    );
  }
}
