import 'package:advice_generator/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IconFiller extends HookWidget {
  final Widget child;
  final void Function()? onTap;
  const IconFiller({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isHovererd = useState<bool>(false);
    final scale = useState<double>(1.0);

    return MouseRegion(
      onEnter: (event) {
        isHovererd.value = true;
      },
      onExit: (event) {
        isHovererd.value = false;
      },
      child: GestureDetector(
        onTap: onTap,
        onTapDown: (_) {
          scale.value = 0.9;
        },
        onTapUp: (_) {
          scale.value = 1.0;
          // Handle button tap
        },
        child: TweenAnimationBuilder(
          tween: Tween(begin: 1.0, end: 0.9),
          duration: const Duration(milliseconds: 500),
          builder: (context, _, child) {
            return Transform.scale(
              scale: scale.value,
              child: child,
            );
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: neonGreen.toColor(),
              shape: BoxShape.circle,
              boxShadow: isHovererd.value
                  ? [
                      BoxShadow(
                        blurRadius: 30.0,
                        color: neonGreen.toColor(),
                      ),
                    ]
                  : null,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
