import 'package:exxen_app/data/entity/string_values.dart';
import 'package:exxen_app/data/entity/tabs.dart';
import 'package:flutter/material.dart';

class ExxenGeneralView extends StatefulWidget {
  const ExxenGeneralView({super.key});

  @override
  State<ExxenGeneralView> createState() => _HomePageState();
}

class _HomePageState extends State<ExxenGeneralView> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs.tabs[myindex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Theme(
        data: ThemeData.dark(),
        child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                myindex = index;
              });
            },
            currentIndex: myindex,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.yellow,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.home), label: StringValues.text9),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.sports_football_outlined),
                  label: StringValues.text10),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.list), label: StringValues.text11),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.shopping_cart),
                  label: StringValues.text12),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person), label: StringValues.text13),
            ]),
      ),
    );
  }
}
