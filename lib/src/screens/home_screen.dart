import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/screens/home/dashboard_view.dart';
import 'package:volleyball_scout/src/screens/home/mannschaft_view.dart';
import 'package:volleyball_scout/src/screens/home/spiele_view.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_app_name/src/features/players/data/player.dart';
// import 'package:my_app_name/src/services/firebase_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    Spiele(),
    Dashboard(),
    Mannschaften(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          title: const Text("Volleyball Scout"),
          actions: <Widget>[
            OutlinedButton(
              // style: ButtonStyle(
              //   side: MaterialStateProperty.all(
              //       const BorderSide(color: Colors.amber)),
              // ),
              onPressed: () {
                debugPrint('Received click');
              },
              child: const Text('Login'),
            ),
            Container(
              width: 10,
            )
          ],
        ),
        body: IndexedStack(
          index: currentPageIndex,
          children: _pages,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          //hoverColor: Theme.of(context).colorScheme.tertiaryContainer,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BottomNavigationBar(
                  //elevation: 0,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  selectedItemColor: Colors.amber,
                  selectedFontSize: 14,
                  unselectedFontSize: 14,
                  currentIndex: currentPageIndex,
                  onTap: (index) {
                    setState(() {
                      currentPageIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.sports_volleyball),
                      label: 'Spiele',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Dashboard',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.people),
                      label: 'Mannschaften',
                    ),
                  ],
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  left: (MediaQuery.of(context).size.width / 3) *
                          currentPageIndex +
                      ((MediaQuery.of(context).size.width / 3 -
                              MediaQuery.of(context).size.width / 3) /
                          2),
                  child: Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
