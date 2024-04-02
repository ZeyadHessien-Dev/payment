import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/views/payment/widgets/payment_details_view_body/payment_details_view_body.dart';

import '../../../../../core/widgets/build_appbar.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
