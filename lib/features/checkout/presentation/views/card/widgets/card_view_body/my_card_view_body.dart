import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/views/card/widgets/card_view_body/components/total_price.dart';
import 'package:payment_project/features/checkout/presentation/views/payment/payment_details.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../payment/widgets/payment_bottom_sheet.dart';
import 'components/order_info_item.dart';

/// لو عايز تخزن بيانات الكارت بتاعة اليوزر وتتعامل معاها بشكل مباشرلازم تنطبق عليك شوية معايير اسمها pci dss requirements
///   ولازم فى طرق معينة علشان تحزن الداتا لازم مثلا تشفرالداتا يعنى التطبيق بتاعك ميبقاش عارف ايه الداتا دى اساسا
///   زى مثلا يتعملها حاجة اسمها tokenization ال انت بتتعامل مع حاجة تانية بتبعتلهم البيانات  وبتتحول على هيئة توكين وانا احتفظ بالتوكين دة ال بيعبر عن بيانات كارت اليوزر
///   ف الموضوع مش مباشر عكس لو استخدمت اتعاملت بشكل مباشر
class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'42.97$',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'0$',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'8$',
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetailsView();
              // }));
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  builder: (context) {
                    return const PaymentMethodsBottomSheet();
                  });
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
