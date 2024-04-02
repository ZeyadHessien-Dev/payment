import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_project/core/styles.dart';
import 'package:payment_project/features/checkout/presentation/views/card/widgets/card_view_body/my_card_view_body.dart';

import '../../../../../core/widgets/build_appbar.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(title: 'My Cart'),
        body: const MyCartViewBody(),
    );
  }
}
