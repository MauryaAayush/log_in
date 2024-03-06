import 'dart:io';
import 'dart:ui';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  File? selectedImage;
  bool checkpass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        child: Column(

          children: [

            CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 30,
              backgroundImage: selectedImage != null
                  ? FileImage(selectedImage!) as ImageProvider<Object>?
                  : AssetImage('assets/images/default_avatar.jpg'),
            ),

            InkWell(
                onTap: () {
                      pickImage();
                },
                child: Icon(Icons.edit,color: Colors.white,)),


            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

               ClipRRect(

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 600,
                      width: 400,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.teal.withOpacity(0.2), width: 2),
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Welcome back!',
                                style: GoogleFonts.inder(
                                  color: Colors.white,
                                  fontSize: 30, // Set the desired font size
                                  fontWeight:
                                      FontWeight.w600, // Set the desired font weight
                                ),
                              )
                            ],
                          ),
                          //email
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: GoogleFonts.inder(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                        BorderSide(color: Colors.white12, width: 2),
                                  ),
                                  labelText: 'Enter Email',
                                  labelStyle: TextStyle(color: Colors.white12),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.teal, width: 2)),
                                  hintText: 'abc@gmail.com',
                                  hintStyle: TextStyle(color: Colors.white12),
                                  prefixIcon: Icon(
                                    Icons.mail_outline,
                                    color: Colors.white70,
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.teal, width: 2)
                                  )),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                          //passsword
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Password',
                                  style: GoogleFonts.inder(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.white12,
                                    width: 2,
                                  ),
                                ),
                                labelText: 'Enter Password',
                                labelStyle: TextStyle(
                                  color: Colors.white12,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.teal, width: 2)),
                                hintText: 'Password123',
                                // Example hint text
                                hintStyle: TextStyle(
                                  color: Colors.white12,
                                ),
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      checkpass = !checkpass;
                                    });
                                  },
                                  child: Icon(
                                    checkpass
                                        ? Icons.remove_red_eye
                                        : Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              obscureText: checkpass,
                              // This hides the entered text for password fields

                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                          //forgot pass
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: GoogleFonts.inder(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // login button

                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: 400,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: 400,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  border:
                                      Border.all(color: Colors.white12, width: 2)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/google.png'),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Login with Google',
                                      style: GoogleFonts.inder(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'or login with SSO',
                                  style: GoogleFonts.inder(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  Future<void> pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        selectedImage = File(pickedImage.path);
      });
    }
  }
}


