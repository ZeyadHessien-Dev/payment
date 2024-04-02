import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/custom_button.dart';
import 'package:payment_project/features/checkout/presentation/views/payment/widgets/payment_method/payment_method_list_view.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(
            updatePaymentMethod: ({index}) => index,
          ),
          const SizedBox(
            height: 32,
          ),
          const CustomButton(text: "Continue",),
        ],
      ),
    );
  }
}
