import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  MainMenuScreen({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          // Hinzugefügt, um das Scrollen zu ermöglichen
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 26.0),
            child: Column(
              children: [
                Text(
                  'DJAYZ',
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.purpleAccent,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 474.0,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 2.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 474.0,
                        width: double.maxFinite,
                        color: Colors.black, // Hintergrundfarbe anpassen
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, top: 8.0, right: 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 2.0,
                                      width: 28.0,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 38.0),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple, width: 4.0),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 90.0, vertical: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Location*",
                                      style: theme.textTheme.headlineSmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                    SizedBox(height: 36.0),
                                    Text(
                                      "Type of Music*",
                                      style: theme.textTheme.headlineSmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 38.0,
                                    ),
                                    Text(
                                      "Date*",
                                      style: theme.textTheme.headlineSmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                    SizedBox(height: 50.0),
                                    Text(
                                      "Budget*",
                                      style: theme.textTheme.headlineSmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                    SizedBox(height: 46.0),
                                    Text(
                                      "More Filters*",
                                      style: theme.textTheme.headlineSmall!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0), // Geändert, um den Abstand zu erhöhen
                Text(
                  "Clear all",
                  style: theme.textTheme.headlineMedium!
                      .copyWith(color: Colors.white),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 12.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.search, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      onTap: (index) {},
    );
  }
}
