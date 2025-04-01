import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:glovo_recreation/pages/CouponsPage/coupons_page.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  List<String> list = [
    "Stupska , 19, B",
    "dodajte novu lokaciju",
    "ADMI SHIT"
  ];
  void navigateToCouponsPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => CouponsPage(),));
  }
  String something = "";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: DropdownSearch<String>(
          items: list,
          onChanged: (value){
            if(value == "dodajte novu lokaciju"){
              navigateToCouponsPage(context);
            }
            else{
              print(value);
            }
          },
          selectedItem: "Odaberite lokaciju",
          popupProps: PopupProps.menu(
            listViewProps: ListViewProps(),
            menuProps: MenuProps(
              elevation: 2,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(5),
              shadowColor: Colors.white,
            ),
            constraints: BoxConstraints(maxHeight: 170),
            showSelectedItems: true,
            disabledItemFn: (String s) => s.startsWith('p'),
          ),
          dropdownDecoratorProps: const DropDownDecoratorProps(
            //textAlign: TextAlign.center,
            baseStyle: TextStyle(color: Colors.orange),

            dropdownSearchDecoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(15, 18, 12, 8),
              suffixIconColor: Colors.white,
              labelStyle: TextStyle(color: Colors.white),
              // labelText: "Odaberite lokaciju",
              hintText: "country in menu mode",
            ),
          ),
        ),
      ),
    );
  }
}
