import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Imprima',
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Loremipsum@gmail.com',
                            hintStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA1A1A1)),
                            labelText: 'Email or Phone',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2B4C59),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffE5E5E5),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffE5E5E5),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      obscureText: _obscureText,
                      style: TextStyle(
                        color: Color(0xffA2A2A2),
                        fontSize: 30,
                      ),
                      decoration: InputDecoration(
                        helperText: 'Forgot your Password?',
                        helperStyle: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontFamily: 'Imprima',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff2B4C59),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _obscureText != _obscureText;
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE5E5E5),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      width: 342,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2B4C59),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('OR',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Colors.black,
                        )),
                    SizedBox(height: 10),
                    Container(
                      width: 342,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Icon(
                                Icons.g_translate,
                                color: Colors.black,
                              ),
                              SizedBox(width: 65),
                              Expanded(
                                  child: Text('Sign in with Google',
                                      style: TextStyle(
                                          fontFamily: 'Imprima',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      width: 342,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.black,
                              ),
                              SizedBox(width: 65),
                              Expanded(
                                  child: Text('Sign in with Facebook',
                                      style: TextStyle(
                                          fontFamily: 'Imprima',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Don\'t have an account yet?',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                                fontSize: 15)),
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Color(0xffFCC21B),
                            fontStyle: FontStyle.italic,
                            fontSize: 13,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    )
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
