import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:latihan/view/ui/navigation_bar.dart';

import '../../../app_color.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  final _noteController = TextEditingController();
  bool isValid = false;

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  inputCheck() {
    if (_noteController.text.isNotEmpty) {
      setState(() {
        isValid = true;
      });
    } else {
      setState(() {
        isValid = false;
      });
    }
  }

  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
          child: Container(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Text(
                  'Review',
                  style: GoogleFonts.inter(
                      fontSize: 24, color: bdark, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 44),
                Center(
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: bdark,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Note',
                  style: GoogleFonts.inter(
                      fontSize: 16, color: gMuda, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                SizedBox(
                  width: 306,
                  child: TextField(
                    minLines: 10,
                    controller: _noteController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: bUngu),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                      ),
                      hintText: 'Notes Tambahan',
                      hintStyle:
                          GoogleFonts.inter(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 63),
                Center(
                  child: SizedBox(
                    width: 190,
                    height: 46,
                    child: Image.asset('image/step3.jpeg'),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 145,
                    height: 41,
                    child: OutlinedButton(
                      child: Text(
                        "Send",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (_) => false,
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: bdark,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
