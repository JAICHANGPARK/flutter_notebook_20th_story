import 'package:flutter/material.dart';
import './src/ui/checkout_address_screen.dart';

class ECommerceCheckoutApp extends StatelessWidget {
  const ECommerceCheckoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckoutAddressScreen(),
    );
  }
}
