import "package:dropdown_search/dropdown_search.dart";
import "package:flutter/material.dart";
import "package:glovo_recreation/MovingContainers/util2.dart";
import "package:glovo_recreation/Testing/testing_drop_down.dart";
import 'package:glovo_recreation/pages/ProfilePage/profile_page.dart';
import "package:glovo_recreation/pages/WelcomePage/util.dart";
import 'package:glovo_recreation/pages/CouponsPage/coupons_page.dart';
import "package:google_fonts/google_fonts.dart";

import "../../MovingContainers/util.dart";

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ProfilePage())));
                    },
                    child: Container(
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 48, 48),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.person_2_outlined,
                          color: Color.fromARGB(255, 255, 204, 0),
                          weight: 2,
                        )),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        //I can't make it centered ##Mirza Kadrić
                        //padding: EdgeInsets.all(),
                        height: 40,

                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 72, 72, 72),
                            borderRadius: BorderRadius.circular(40)),
                        // ignore: prefer_const_constructors

                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.yellow,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // ignore: prefer_const_constructors
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Šta želi da ti donseseso?",
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CouponsPage())));
                    },
                    child: Container(
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 48, 48),
                            borderRadius: BorderRadius.circular(35)),
                        child: Icon(
                          Icons.ios_share_outlined,
                          color: Color.fromARGB(255, 255, 204, 0),
                          weight: 3,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  //select address
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120.0),
                    child: TestingDropDownMenu(),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Stupska , 19, B',
                  //       style: GoogleFonts.inter(
                  //           color: Colors.white, fontSize: 18),
                  //     ),
                  //     Icon(
                  //       Icons.arrow_drop_down_rounded,
                  //       color: Colors.white,
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 0),
                    child: Container(
                      height: 420,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      child: TouchMove2(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FoodCategory(
                      nameOfCategory: "Because you ordered Burgers",
                      image1Path: "lib/assets/hamburger.jpg",
                      image2Path: "lib/assets/kfc.jpg",
                      image3Path: "lib/assets/pizza3.jpg",
                      image4Path: "lib/assets/cevapi.jpg",
                      name1: "Mama Burgers Malta",
                      name2: "KFC",
                      name3: "Pizzeria Calabria",
                      name4: "Ćevabdžinica Brajlović",
                      rating1: 98,
                      rating2: 96,
                      rating3: 94,
                      rating4: 99),
                  FoodCategory(
                      nameOfCategory: "Best of Sarajevo",
                      image1Path: "lib/assets/hamburger.jpg",
                      image2Path: "lib/assets/kfc.jpg",
                      image3Path: "lib/assets/pizza3.jpg",
                      image4Path: "lib/assets/cevapi.jpg",
                      name1: "Mama Burgers Malta",
                      name2: "KFC",
                      name3: "Pizzeria Calabria",
                      name4: "Ćevabdžinica Brajlović",
                      rating1: 98,
                      rating2: 96,
                      rating3: 94,
                      rating4: 99),
                  FoodCategory(
                      nameOfCategory: "New to Glovo",
                      image1Path: "lib/assets/hamburger.jpg",
                      image2Path: "lib/assets/kfc.jpg",
                      image3Path: "lib/assets/pizza3.jpg",
                      image4Path: "lib/assets/cevapi.jpg",
                      name1: "Mama Burgers Malta",
                      name2: "KFC",
                      name3: "Pizzeria Calabria",
                      name4: "Ćevabdžinica Brajlović",
                      rating1: 98,
                      rating2: 96,
                      rating3: 94,
                      rating4: 99)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
