import 'package:flutter/material.dart';
import 'package:latihan/view/ui/auth/regis.dart';
import 'package:latihan/view/ui/navigation_bar.dart';
import '../../../app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool isValid = false;
  bool isObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();

    super.dispose();
  }

  inputCheck() {
    if (_emailController.text.isNotEmpty && _passController.text.isNotEmpty) {
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              Center(
                child: SizedBox(
                    height: 266,
                    width: 266,
                    child: Image.asset('image/Logo.jpeg')),
              ),
              Container(
                color: Colors.transparent,
                height: 270,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(left: 27),
                      child: Text(
                        "Email",
                        style: GoogleFonts.workSans(
                            color: gMuda,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        color: Colors.transparent,
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 12),
                        child: SizedBox(
                          height: 48,
                          width: 306,
                          child: TextField(
                            controller: _emailController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
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
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(left: 27),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            color: gMuda,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 12),
                        child: SizedBox(
                          height: 48,
                          width: 306,
                          child: TextField(
                            obscureText: isObscure,
                            controller: _passController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bUngu),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: bdark),
                              ),
                              hintText: 'Masukkan Password',
                              hintStyle: TextStyle(
                                fontSize: 14.5,
                                color: bUngu,
                              ),
                            ),
                            onChanged: (value) => inputCheck(),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27,
                          ),
                          SizedBox(
                            width: 145,
                            height: 41,
                            child: OutlinedButton(
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.workSans(
                                  color: bUngu,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(width: 1.0, color: bUngu),
                                primary: Colors.black,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 145,
                            height: 41,
                            child: OutlinedButton(
                              child: Text(
                                "Log in",
                                style: GoogleFonts.workSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: //isValid ?
                                  () =>
                                      Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                                (_) => false,
                              ),
                              //: null,
                              style: OutlinedButton.styleFrom(
                                backgroundColor: bdark,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 27,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23),
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
            ],
          ),
        ),
      ),
    );
  }
}
