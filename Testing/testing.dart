import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isPanelOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlidingUpPanel Example'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16),
                Text('This is the main content'),
                SizedBox(height: 800),
              ],
            ),
          ),
          SlidingUpPanel(
            maxHeight: 400,
            minHeight: 0,
            panel: Center(
              child: Text('This is the panel content'),
            ),
            collapsed: IconButton(
              icon: Icon(Icons.arrow_upward),
              onPressed: () {
                setState(() {
                  _isPanelOpen = true;
                });
              },
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
            onPanelSlide: (double pos) {
              setState(() {
                _isPanelOpen = pos > 0.2;
              });
            },
            onPanelOpened: () {
              setState(() {
                _isPanelOpen = true;
              });
            },
            onPanelClosed: () {
              setState(() {
                _isPanelOpen = false;
              });
            },
          ),
          SlidingUpPanel(
            maxHeight: 400,
            minHeight: _isPanelOpen ? 200 : 48,
            panel: Center(
              child: Text('This is the panel content'),
            ),
            collapsed: Container(),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
            onPanelSlide: (double pos) {
              setState(() {
                _isPanelOpen = pos > 0.2;
              });
            },
            onPanelOpened: () {
              setState(() {
                _isPanelOpen = true;
              });
            },
            onPanelClosed: () {
              setState(() {
                _isPanelOpen = false;
              });
            },
          )
        ],
      ),
    );
  }
}
