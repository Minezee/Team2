import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/view/ui/auth/login.dart';
import 'package:latihan/view/ui/beranda/home.dart';
import 'package:latihan/view/ui/beranda/verif_hp.dart';
import 'package:latihan/view/ui/pesanan/detail_information.dart';

import '../../../app_color.dart';

class Filter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FilterState();
  }
}

class _FilterState extends State<Filter> {
  TextEditingController searchController = new TextEditingController();
  String? filter;

  @override
  initState() {
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Elektornik> Menu = [
      Elektornik(
        nama: 'Televisi',
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        ),
      ),
      Elektornik(
        nama: 'Kulkas',
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        ),
      ),
      Elektornik(
        nama: 'AC',
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => VerificationPhone(),
          ),
        ),
      ),
      Elektornik(
        nama: 'Dispenser',
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        ),
      ),
      Elektornik(
        nama: 'Mesin Cuci',
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        ),
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: bdark),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('image/filter_image.jpg'),
            SizedBox(height: 21),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: bUngu),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: bdark),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: bUngu,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 11),
                    SizedBox(
                      width: 260,
                      child: Text(
                        'Pick your stuff you want to fix',
                        maxLines: 2,
                        style: GoogleFonts.workSans(
                          color: bdark,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 11),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Menu.length,
                itemBuilder: (context, index) {
                  return filter == null || filter == ""
                      ? Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 11),
                          child: Card(
                            color: bdark,
                            child: ListTile(
                                title: Text(
                                  '${Menu[index].nama}',
                                  style: GoogleFonts.workSans(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailInformation(),
                                      ),
                                    )),
                          ),
                        )
                      : '${Menu[index].nama}'
                              .toLowerCase()
                              .contains(filter!.toLowerCase())
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 11),
                              child: Card(
                                color: bdark,
                                child: ListTile(
                                  title: Text(
                                    '${Menu[index].nama}',
                                    style: GoogleFonts.workSans(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailInformation(),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container();
                },
              ),
            ),
          ],
        ));
  }
}

class Elektornik {
  final String nama;
  final Function onTap;

  const Elektornik({required this.nama, required this.onTap});
}
