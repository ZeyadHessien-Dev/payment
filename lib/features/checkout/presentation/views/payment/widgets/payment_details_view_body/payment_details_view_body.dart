import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/custom_button.dart';
import '../../../thank_you/thank_you_screen.dart';
import '../payment_method/payment_method_list_view.dart';
import 'components/custom_credit_card.dart';


class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        SliverToBoxAdapter(
          child: PaymentMethodsListView(updatePaymentMethod:({index}) {
            debugPrint("Index $index");
            return index;
          },

          ),
        ),


        SliverToBoxAdapter(
          child: CustomCreditCard(
            autoValidateMode: autoValidateMode,
            formKey: formKey,
          ),
        ),

        /// Button
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log('payment');
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return const ThankYouView();
                      }));
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: 'Payment',
                ),
              )),
        ),
      ],
    );
    // return SingleChildScrollView(
    //    child: Column(
    //      children: [
    //        PaymentMethodsListView(updatePaymentMethod:({index}) {
    //          debugPrint("Index $index");
    //          return index;
    //        },
    //
    //        ),
    //        CustomCreditCard(
    //          autoValidateMode: autoValidateMode,
    //          formKey: formKey,
    //        ),
    //        // ListView.builder(itemBuilder: (context, index) => Text("zz"), itemCount: 10, shrinkWrap: true,),
    //        Padding(
    //          padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
    //          child: CustomButton(
    //            onTap: () {
    //              if (formKey.currentState!.validate()) {
    //                formKey.currentState!.save();
    //                log('payment');
    //              } else {
    //                autoValidateMode = AutovalidateMode.always;
    //                setState(() {});
    //              }
    //            },
    //            text: 'Payment',
    //          ),
    //        ),
    //      ],
    //    ),
    //
    //
    //
    //
    //
    //
    //
    // );
  }
}
