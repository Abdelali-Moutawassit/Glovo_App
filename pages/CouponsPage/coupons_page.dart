import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
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
              Container(
                  height: 150,
                  child: Lottie.asset("lib/assets/saving_money.json")),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    Text(
                      "Invite friends, ",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "earn KM 4.50 at a time!",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              //Spacer(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "8MXQPZ3",
                          style: GoogleFonts.inter(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: (){
                            Clipboard.setData(ClipboardData(text: "8MXQPZ3"));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Copied to clipboard")));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              "Share code",
                              style:
                                  GoogleFonts.inter(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Text(
                      'How it works',
                      style: GoogleFonts.inter(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '• Share your code with friends and they will each get free delivery on their first 3 orders.',
                      style: GoogleFonts.inter(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '• Earn KM 4.50 to spend in Glovo for every friend that places their first order',
                      style: GoogleFonts.inter(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'More info',
                      style: GoogleFonts.inter(
                          color: Colors.yellow, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
