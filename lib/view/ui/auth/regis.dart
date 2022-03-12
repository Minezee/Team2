import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../../../app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/view/ui/auth/verif.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _passController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  bool isValid = false;
  bool isObscure = true;

  @override
  void dispose() {
    _passController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  inputCheck() {
    if (_passController.text.isNotEmpty &&
        _nameController.text.isNotEmpty &&
        _numberController.text.isNotEmpty &&
        _emailController.text.isNotEmpty) {
      setState(() {
        isValid = true;
      });
    } else {
      setState(() {
        isValid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: Image.asset(
                  'image/regis_image.jpeg',
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 27),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign Up",
                          style: GoogleFonts.workSans(
                              color: bdark,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16 * a,
                        ),
                        Text(
                          "Nomor Telpon",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 4),
                        SizedBox(
                          height: 48,
                          width: 306,
                          child: TextField(
                            controller: _numberController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bUngu),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bdark),
                              ),
                              hintText: 'Masukkan Nomor Telpon',
                              hintStyle: GoogleFonts.workSans(
                                  fontSize: 14, color: bUngu),
                            ),
                            onChanged: (value) => inputCheck(),
                          ),
                        ),
                        SizedBox(
                          height: 16 * a,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 4),
                        SizedBox(
                          height: 48,
                          width: 306,
                          child: TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bUngu),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bdark),
                              ),
                              hintText: 'Masukkan Email',
                              hintStyle: GoogleFonts.workSans(
                                  fontSize: 14, color: bUngu),
                            ),
                            onChanged: (value) => inputCheck(),
                          ),
                        ),
                        SizedBox(height: 16 * a),
                        Container(
                          color: Colors.transparent,
                          child: Text(
                            "Nama Lengkap",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        SizedBox(
                          height: 48,
                          width: 306,
                          child: TextField(
                            controller: _nameController,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bUngu),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bdark),
                              ),
                              hintText: 'Masukkan Nama Lengkap',
                              hintStyle: GoogleFonts.workSans(
                                  fontSize: 14, color: bUngu),
                            ),
                            onChanged: (value) => inputCheck(),
                          ),
                        ),
                        SizedBox(height: 16 * a),
                        Container(
                          color: Colors.transparent,
                          child: Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        SizedBox(
                          height: 48,
                          width: 306,
                          child: TextField(
                            obscureText: isObscure,
                            controller: _passController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bUngu),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bdark),
                              ),
                              hintText: 'Masukkan Password',
                              hintStyle: GoogleFonts.workSans(
                                  fontSize: 14, color: bUngu),
                            ),
                            onChanged: (value) => inputCheck(),
                          ),
                        ),
                        SizedBox(height: 23 * a),
                        Center(
                          child: SizedBox(
                              height: 41,
                              width: 145,
                              child: OutlinedButton(
                                  child: Text(
                                    "Sign Up",
                                    style: GoogleFonts.workSans(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: bdark),
                                  onPressed: //isValid ?
                                      () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                VerificationEmail(),
                                          ))
                                  // : null,
                                  )),
                        ),
                        SizedBox(height: 23 * a),
                        Center(
                          child: Text(
                            'made by kelompok 12',
                            style: GoogleFonts.workSans(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
