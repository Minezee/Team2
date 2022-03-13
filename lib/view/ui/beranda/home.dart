import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/app_color.dart';
import 'package:latihan/view/ui/beranda/verif_hp.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:latihan/view/ui/beranda/explore_tips.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Arfix",
          style: GoogleFonts.arvo(
            color: bdark,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('image/homePage.jpg'),
            SizedBox(height: 19 * a),
            Padding(
              padding: EdgeInsets.only(left: 17),
              child: Container(
                color: Colors.transparent,
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Easy with Arfix ',
                      style: GoogleFonts.workSans(
                        color: bdark,
                        fontSize: 26 * a,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 11 * a),
                    SizedBox(
                      width: 240,
                      child: Text(
                        'make it easy to repair your stuff as easy as pressing a button',
                        maxLines: 2,
                        style: GoogleFonts.workSans(
                          color: Colors.black,
                          fontSize: 16 * a,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 26 * a),
                    Padding(
                      padding: EdgeInsets.only(left: 27.5951, right: 44.5951),
                      child: Container(
                        height: 76,
                        width: 307,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 9, horizontal: 7),
                          child: SizedBox.fromSize(
                            size: Size(289 * a, 62 * a),
                            child: Material(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              color: Color(0xFFE74C1C),
                              child: InkWell(
                                splashColor: bTerang2,
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => VerificationPhone(),
                                )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 28 * a),
                                      child: SizedBox(
                                        width: 28,
                                        height: 28,
                                        child:
                                            Image.asset('image/newScrew.jpeg'),
                                      ),
                                    ),
                                    SizedBox(width: 47 * a),
                                    Padding(
                                      padding: EdgeInsets.only(right: 35),
                                      child: Text(
                                        "F I X   N o w",
                                        style: GoogleFonts.workSans(
                                            fontSize: 24 * a,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20 * a),
                    Text(
                      'Testimonial',
                      style: GoogleFonts.workSans(
                        fontSize: 24 * a,
                        fontWeight: FontWeight.w500,
                        color: bdark,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 19 * a),
            Container(
              height: 155,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('image/bgTesti.jpeg'))),
              child: CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 17, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset("image/mariana2.jpeg"),
                        SizedBox(width: 16),
                        Container(
                          color: Colors.transparent,
                          height: 100,
                          width: 200,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('image/quote.jpg'),
                                SizedBox(height: 5),
                                Text(
                                  'Pengerjaan di Arfix sangat bagus dan memperhatikan detail sehingga ga perlu worry lagi barang akan rusak',
                                  maxLines: 4,
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: gMuda),
                                ),
                                SizedBox(height: 5),
                                Text('Mariana',
                                    style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: bdark)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 17, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset("image/ryna.jpeg"),
                        SizedBox(width: 16),
                        Container(
                          color: Colors.transparent,
                          height: 100,
                          width: 200,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('image/quote.jpg'),
                                SizedBox(height: 5),
                                Text(
                                  'Aplikasinya Bagus banget, membantu banget, dan reparatornya ramah-ramah, semoga semakin bagus aplikasinya',
                                  maxLines: 4,
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: gMuda),
                                ),
                                SizedBox(height: 5),
                                Text('Ryna',
                                    style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: bdark)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 118,
                  aspectRatio: 16 / 9,
                  viewportFraction: 9 / 10,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  /*autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,*/
                  disableCenter: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(height: 26 * a),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Text(
                    'Tips and Tricks',
                    style: GoogleFonts.workSans(
                        fontSize: 24 * a,
                        fontWeight: FontWeight.w500,
                        color: bdark),
                  ),
                ),
                SizedBox(width: 106),
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ExploreTNT(),
                  )),
                  child: Container(
                    width: 60,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: bdark),
                    child: Center(
                      child: Text(
                        "Explore",
                        style: GoogleFonts.workSans(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20 * a),
            Container(
              height: 155,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('image/bgTesti.jpeg'))),
              child: CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(child: Image.asset('image/boreUp.jpg')),
                        SizedBox(width: 10),
                        Container(
                          color: Colors.transparent,
                          height: 155,
                          width: 120,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),
                                Text('How to bore up your motorcycle',
                                    maxLines: 2,
                                    style: GoogleFonts.workSans(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: bdark)),
                                SizedBox(height: 5),
                                SizedBox(
                                  height: 84,
                                  child: Text(
                                    'Bore up motor dapat meningkatkan daya dan kecepatan kendaraan motor hingga 5 hp ...',
                                    maxLines: 7,
                                    style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: gMuda),
                                  ),
                                ),
                                SizedBox(height: 4),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(child: Image.asset('image/car.jpg')),
                        SizedBox(width: 10),
                        Container(
                          color: Colors.transparent,
                          height: 155,
                          width: 120,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),
                                Text('How to bore up your motorcycle',
                                    maxLines: 2,
                                    style: GoogleFonts.workSans(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: bdark)),
                                SizedBox(height: 5),
                                SizedBox(
                                  height: 84,
                                  child: Text(
                                    'Bore up motor dapat meningkatkan daya dan kecepatan kendaraan motor hingga 5 hp ...',
                                    maxLines: 7,
                                    style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: gMuda),
                                  ),
                                ),
                                SizedBox(height: 4),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 120,
                  aspectRatio: 2,
                  viewportFraction: 0.7,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
