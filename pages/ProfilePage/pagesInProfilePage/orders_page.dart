import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            children: [
              //X Icon
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //Orders
              Container(
                  //color: Colors.red,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "lib/assets/hamburger.jpg",
                          height: 90,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mutvak',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '1 x Pomfrit',
                            style: GoogleFonts.inter(color: Colors.grey),
                          ),
                          Text(
                            "1 x Classic burger",
                            style: GoogleFonts.inter(color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Text(
                                'KM 17.70',
                                style: GoogleFonts.inter(color: Colors.grey),
                              ),
                              //SizedBox(width: double.infinity,),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text("Reorder"),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
