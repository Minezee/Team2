import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_color.dart';

class TermAndCondition extends StatefulWidget {
  const TermAndCondition({Key? key}) : super(key: key);

  @override
  State<TermAndCondition> createState() => _TermAndConditionState();
}

class _TermAndConditionState extends State<TermAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Terms & Condition",
          style: GoogleFonts.workSans(
            color: bdark,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: bdark),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
