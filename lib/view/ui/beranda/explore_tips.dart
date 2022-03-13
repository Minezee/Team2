import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/view/ui/beranda/Tips1.dart';

import '../../../app_color.dart';

class ExploreTNT extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ExploreTNTState();
  }
}

class _ExploreTNTState extends State<ExploreTNT> {
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
    List<TnT> Tips = [
      TnT(
        nama: 'How to Bore Up Your motorcycle',
        sub:
            'Bore up motor dapat meningkatkan daya dan kecepatan kendaraan motor hingga 5...',
      ),
      TnT(
        nama: 'Car Maintenance Tips to Help Keep Your Vehicle in Good Shape',
        sub:
            'Perawatan mobil secara rutin akan menjaga kondisi mobil, terlebih jika servis...',
      ),
      TnT(
        nama: 'Cara Mengukur Konsumsi Bahan Bakar',
        sub:
            'Bore up motor dapat meningkatkan daya dan kecepatan kendaraan motor hingga 5...',
      ),
      TnT(
        nama: 'Cara Mengukur Alat Pelacak Tersembunyi Dimobil',
        sub:
            'Perawatan mobil secara rutin akan menjaga kondisi mobil, terlebih jika servis...',
      ),
      TnT(
        nama: 'Manfaat Reflektor AC Bagi Kesehatan',
        sub:
            'Bore up motor dapat meningkatkan daya dan kecepatan kendaraan motor hingga 5...',
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Tips And Tricks',
            style: GoogleFonts.inter(
                fontSize: 22, color: bdark, fontWeight: FontWeight.w500),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: bdark),
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
                        'Another Recommend',
                        maxLines: 2,
                        style: GoogleFonts.inter(
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
                itemCount: Tips.length,
                itemBuilder: (context, index) {
                  return filter == null || filter == ""
                      ? Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 11),
                          child: Card(
                            color: Colors.white,
                            child: ListTile(
                                title: Text(
                                  '${Tips[index].nama}',
                                  style: GoogleFonts.inter(
                                    color: bdark,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  '${Tips[index].sub}',
                                  style: GoogleFonts.inter(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Tips1(),
                                      ),
                                    )),
                          ),
                        )
                      : '${Tips[index].nama}'
                              .toLowerCase()
                              .contains(filter!.toLowerCase())
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 11),
                              child: Card(
                                color: Colors.white,
                                child: ListTile(
                                  title: Text(
                                    '${Tips[index].nama}',
                                    style: GoogleFonts.inter(
                                      color: bdark,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    '${Tips[index].sub}',
                                    style: GoogleFonts.inter(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Tips1(),
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

class TnT {
  final String nama;
  final String sub;

  const TnT({required this.nama, required this.sub});
}
