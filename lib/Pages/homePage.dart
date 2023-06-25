import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_project/Pages/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Categ> cat = [
    Categ(
        imageUrl: "assets/images/alexsandra.png",
        name: "Deadlift",
    ),
    Categ(
      imageUrl: "assets/images/emily.png",
      name: "Yoga",
    ),
    Categ(
      imageUrl: "assets/images/sule.png",
      name: "Cross Cable",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ola, ",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 35,
                            color: Colors.red.shade400,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "Amigo",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 35,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/emely.jpg"),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.red.shade400
                        )
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 175),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white54.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Center(
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.red.shade400,
                        shape: BoxShape.circle
                      ),
                      child:const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60,left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Find ",
                          style: GoogleFonts.lato(
                            fontSize: 27,
                            color: Colors.red.shade400,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "your Workout",
                          style: GoogleFonts.lato(
                            fontSize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.filter_alt_sharp,
                      size: 30,
                      color: Colors.white54,
                    )
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 45,
                  width: 365,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF232441),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Search Workout",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                          fontSize: 18,
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.white,
                        )
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1.5,
                          color: Colors.red.shade100
                        )
                      ),
                      margin: EdgeInsets.only(right: 5),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 15),
                        child: Text(
                          "Popular",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 88,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1.5,
                              color: Colors.red.shade100
                          )
                      ),
                      margin: EdgeInsets.only(right: 5),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 16),
                        child: Text(
                          "Cardio",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 88,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1.5,
                              color: Colors.red.shade100
                          )
                      ),
                      margin: EdgeInsets.only(right: 5),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 11),
                        child: Text(
                          "Full Body",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 88,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1.5,
                              color: Colors.red.shade100
                          )
                      ),
                      margin: EdgeInsets.only(right: 5),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 11),
                        child: Text(
                          "Cross Fit",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Workout",
                      style: GoogleFonts.lato(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cat.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 172,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(cat[index].imageUrl,),
                                    )
                                  ),
                                ),
                                SizedBox(height: 7,),
                                Text(
                                  cat[index].name,
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
