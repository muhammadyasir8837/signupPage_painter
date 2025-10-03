import 'package:flutter/material.dart';

import 'package:signuppage_painter/forgotpass.dart';
import 'package:signuppage_painter/mypainter.dart';
// import 'package:signuppage_painter/mypainter1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.white,
              child: CustomPaint(
                painter: MyPainter(),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 88)),
                    Container(
                      height: height * 0.32,
                      width: width * 0.9,
                      // color: Colors.blueGrey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: height * 0.06,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "User name.",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 48, 47, 47),
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height * 0.06,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: width * 0.02),
                                Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                // SizedBox(width: width * 0.1),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.81,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 48, 47, 47),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height * 0.06,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: width * 0.02),
                                Icon(Icons.key, color: Colors.white, size: 20),
                                // SizedBox(width: width * 0.1),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.81,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Passward",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 48, 47, 47),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: height * 0.06,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: width * 0.02),
                                Icon(Icons.key, color: Colors.white, size: 20),
                                // SizedBox(width: width * 0.1),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.81,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Confirm passward",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 48, 47, 47),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 44),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPass(),
                            ),
                          );
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 119, 9, 1),
                                Colors.orange,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Container(
                      height: height * 0.08,
                      width: width * 0.55,
                      //color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: height * 0.12,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "G+",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.12,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/download1.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.12,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/download.jpg"),
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
            Positioned(
              top: 20,
              left: width * 0.39,
              child: Text(
                "LOGO",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 20,
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: const Color.fromARGB(255, 143, 1, 168),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
