import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCategory extends StatelessWidget {
  final String nameOfCategory;

  final String image1Path;
  final String image2Path;
  final String image3Path;
  final String image4Path;

  final String name1;
  final String name2;
  final String name3;
  final String name4;

  final int rating1;
  final int rating2;
  final int rating3;
  final int rating4;

  FoodCategory({
    required this.nameOfCategory,
    required this.image1Path,
    required this.image2Path,
    required this.image3Path,
    required this.image4Path,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.rating1,
    required this.rating2,
    required this.rating3,
    required this.rating4,
  });

  Widget build(BuildContext context) {
    return Container(
        height: 400,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 48, 48, 48),
            borderRadius: BorderRadius.circular(0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.food_bank,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        nameOfCategory,
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          image1Path,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          name1,
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            rating1.toString() + "%",
                            style: GoogleFonts.inter(
                                color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 53,
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(children: [
                              Icon(
                                Icons.pedal_bike,
                                size: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "PROMO",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ]),
                          )
                        ],
                      )
                    ],
                  ),

                  //second image
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          image2Path,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          name2,
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            rating2.toString() + "%",
                            style: GoogleFonts.inter(
                                color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 53,
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(children: [
                              Icon(
                                Icons.pedal_bike,
                                size: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "PROMO",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ]),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              //second row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //third
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          image3Path,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          name3,
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            rating3.toString() + "%",
                            style: GoogleFonts.inter(
                                color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 53,
                          ),
                          // Container(
                          //   padding: EdgeInsets.all(2),
                          //   decoration: BoxDecoration(
                          //     color: Colors.yellow,
                          //     borderRadius:
                          //         BorderRadius.circular(5),
                          //   ),
                          //   child: Row(children: [
                          //     Icon(
                          //       Icons.pedal_bike,
                          //       size: 15,
                          //     ),
                          //     SizedBox(
                          //       width: 3,
                          //     ),
                          //     Text(
                          //       "PROMO",
                          //       style: GoogleFonts.inter(
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 15),
                          //     )
                          //   ]),
                          // )
                        ],
                      )
                    ],
                  ),
                  //fourth one
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          image4Path,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          name4,
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                rating4.toString() + "%",
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                "(148)",
                                style: GoogleFonts.inter(
                                    color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 53,
                          ),
                          // Container(
                          //   padding: EdgeInsets.all(2),
                          //   decoration: BoxDecoration(
                          //     color: Colors.yellow,
                          //     borderRadius:
                          //         BorderRadius.circular(5),
                          //   ),
                          //   child: Row(children: [
                          //     Icon(
                          //       Icons.pedal_bike,
                          //       size: 15,
                          //     ),
                          //     SizedBox(
                          //       width: 3,
                          //     ),
                          //     Text(
                          //       "PROMO",
                          //       style: GoogleFonts.inter(
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 15),
                          //     )
                          //   ]),
                          // )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
