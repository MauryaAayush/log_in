import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtEmail = TextEditingController();

  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 500,
          width: 400,
          decoration: BoxDecoration(
              color: Color(0xFF181818), borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back!',
                    style: GoogleFonts.inder(
                      color : Colors.white,
                      fontSize: 30,  // Set the desired font size
                      fontWeight: FontWeight.w600,  // Set the desired font weight
                    ),
                  )


                ],
              ),
//        email
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Email',style: GoogleFonts.inder(
                  color : Colors.white
                ),),
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
                        width: 2
                      ),
                    ),
                    labelText: 'Enter Email',
                    labelStyle: TextStyle(
                      color: Colors.grey
                    ),
                    hintText: 'abc@gmail.com',
                    prefixIcon: Icon(Icons.mail_outline),
                  ),
                ),
              ),

              //passsword
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password',style: GoogleFonts.inder(
                        color : Colors.white
                    ),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  maxLength: 8,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Colors.white12,
                            width: 2
                        ),
                      ),
                      alignLabelWithHint: true,
                      hintText: '@abc123',
                      counterText: '0/8',
                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
