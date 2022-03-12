import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_color.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset('image/order.jpeg'),
            SizedBox(height: 31),
            SizedBox(
              width: 230,
              child: Text(
                'You don’t have any order request now',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
