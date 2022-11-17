import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Responsive extends StatelessWidget {
  final Widget isMobile;
  final Widget isWeb;
  const Responsive({
    super.key,
    this.isMobile = const Text(
      'Nothing to show for mobile.',
    ),
    this.isWeb = const Text(
      'Nothing to show for web.',
    ),
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1000) {
          return isMobile;
        } else {
          return isWeb;
        }
      },
    );
  }
}

final responsiveProvider = Provider<Responsive>((ref) => const Responsive());
