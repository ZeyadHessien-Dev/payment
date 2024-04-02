import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/views/thank_you/thank_you_view_body/thank_you_view_body_screen.dart';

import '../../../../../core/widgets/build_appbar.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}
