import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_project/Pages/homePage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  final List levels = [
    "Beginner",
    "Advanced"
  ];

  var selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image2.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HARD ",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 35,
                      color: Colors.white,
                      letterSpacing: 4,
                    ),
                  ),
                  Text(
                    "ELEMENT",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 35,
                      color: Colors.red.shade400,
                      letterSpacing: 4,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "About you",
                    style: GoogleFonts.lato(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "We want to know more about you, follow the next steps\n to complete the information",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height: 185,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectIndex = index;
                            });
                          },
                          child: Container(
                            height: 185,
                            width: 185,
                            decoration: BoxDecoration(
                              color: selectIndex == index ? Colors.red.shade200 : Color(0xFF232441),
                              //color: const Color(0xFF232441),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 60, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "I am",
                                    style: GoogleFonts.lato(
                                      fontSize: 35,
                                      color: Colors.red.shade400,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    levels[index],
                                    style: GoogleFonts.lato(
                                      fontSize: 35,
                                      color: Colors.red.shade400,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: levels.length,
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 13),
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xFF232441),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 9,left: 30),
                          child: Text(
                            "Skip Intro",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Colors.blueGrey.shade100
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 13),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                        },
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 9,left: 50),
                            child: Text(
                              "Next",
                              style: GoogleFonts.lato(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
