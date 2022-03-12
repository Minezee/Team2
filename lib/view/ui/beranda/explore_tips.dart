import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_color.dart';

class ExploreTNT extends StatefulWidget {
  const ExploreTNT({Key? key}) : super(key: key);

  @override
  State<ExploreTNT> createState() => _ExploreTNTState();
}

class _ExploreTNTState extends State<ExploreTNT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tips And Tricks",
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
