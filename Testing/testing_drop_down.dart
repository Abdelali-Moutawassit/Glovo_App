import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:glovo_recreation/pages/CouponsPage/coupons_page.dart';

class TestingDropDownMenu extends StatefulWidget {
  const TestingDropDownMenu({super.key});

  @override
  State<TestingDropDownMenu> createState() => _TestingDropDownMenuState();
}

class _TestingDropDownMenuState extends State<TestingDropDownMenu> {
  List<String> list = [
    "Stupska , 19, B",
    "ADMIN SHIT",
    "dodajte novu lokaciju (soon)",
  ];
  void navigateToSomePage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CouponsPage(),
        ));
  }

  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      items:list,
      onChanged: (value) {
        if (value == list[1]) {
          navigateToSomePage(context);
        } else {
          print(value);
        }
      },
      selectedItem: list[0],
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
        disabledItemFn: (String s) => s.startsWith('d'),
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
    );

    //Here we have addable dropdown menu wiht multiSelection
    // DropdownSearch<String>.multiSelection(
    //   items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
    //   popupProps: PopupPropsMultiSelection.menu(
    //     showSelectedItems: true,
    //     disabledItemFn: (String s) => s.startsWith('I'),
    //   ),
    //   onChanged: print,
    //   selectedItems: ["Brazil"],
    // )
  }
}
