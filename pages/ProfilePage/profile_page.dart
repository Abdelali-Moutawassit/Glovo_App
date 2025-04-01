import 'package:flutter/material.dart';
import 'package:glovo_recreation/pages/ProfilePage/panel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color? slideBackgroundColor = Color.fromARGB(255, 48, 48, 48);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SlidingUpPanel(
          panelSnapping: true,
          header: Text(
            'Account',
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          isDraggable: true,
          slideDirection: SlideDirection.UP,
          defaultPanelState: PanelState.OPEN,
          padding: EdgeInsets.all(10),
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 48, 48, 48),
          minHeight: 300,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone),
                          Spacer(),
                          Text(
                            "Help",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Hello, Mirza!",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Container(
                    height: 200,
                    child: Lottie.asset("lib/assets/delivery.json")),
                Spacer(
                  flex: 7,
                ),
              ],
            ),
          ),
          panelBuilder: (controller) => PanelWidget(
            controller: controller,
          ),
        ),
      ),
    );
  }
}
