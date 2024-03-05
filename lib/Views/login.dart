import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool checkpass = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 600,
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
              //email
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Email',style: GoogleFonts.inder(
                  fontSize : 16,
                  color : Colors.white,

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
                      color: Colors.white12
                    ),
                    focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.teal,
                       width: 2
                     )
                    ),
                    hintText: 'abc@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.white12
                    ),
                    prefixIcon: Icon(Icons.mail_outline),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),

              //passsword
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password',style: GoogleFonts.inder(
                        color : Colors.white,
                      fontSize : 16,
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
                        width: 2,
                      ),
                    ),
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(
                      color: Colors.white12,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.teal,
                            width: 2
                        )
                    ),
                    hintText: 'Password123', // Example hint text
                    hintStyle: TextStyle(
                      color: Colors.white12,
                    ),
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            checkpass = !checkpass;
                          });

                        },
                        child: Icon(
                            checkpass ?  Icons.remove_red_eye : Icons.visibility_off


                           )),
                  ),
                  obscureText: checkpass, // This hides the entered text for password fields
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly, // Allow only digits
                  ],
                  style:TextStyle(
                    color: Colors.white
                  ),
                ),
              ),

              //forgot pass
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',style: GoogleFonts.inder(
                        color : Colors.white,
                      fontSize : 16,
                    ),),
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
                    gradient: LinearGradient(colors: [
                      Colors.tealAccent,
                      Colors.teal,
                    ])
                  ),
                  child: Text('Log In',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
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
                    border: Border.all(color: Color(0xFF222222),
                    width: 2)
                     
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png'),
                      SizedBox(width: 15,),
                      Text('Login with Google',style: GoogleFonts.inder(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
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

                    Text('or login with SSO',style: GoogleFonts.inder(
                      color : Colors.white,
                      fontSize : 17,
                    ),),
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
