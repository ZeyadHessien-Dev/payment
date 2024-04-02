import 'package:flutter/material.dart';

import 'features/checkout/presentation/views/card/my_card.dart';

void main() {
  runApp(const MyApp());
}

/// 2 ways to use payment
/// 1. By card [There are many Payment Getaway provide to me paying by using card] course explain stripe to 2 reasons
/// first reason --> so famous
/// second reason --> its docs are so difficult

/// 2. paypal[Paypal account]]



/// countries support stripe --> https://stripe.com/global
/// payment gateway [egypt not support if company in egypt]
/// fees that take from payment to another payment differs [based on that choose payment if there are more payment in same country]


/// flutter stripe --> we'll deal with both
/// [API that provide to me]
/// [sdk --> method that exist and provide to me and ui]
class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Integration Payment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CardView(),
    );
  }
}

