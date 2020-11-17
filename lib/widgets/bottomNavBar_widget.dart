// import 'package:flutter/material.dart';
// import 'package:mate/constants/colors.dart';
// import 'package:mate/screens/home/home_screen.dart';
// import 'package:mate/screens/profile/profile_screen.dart';
// import 'package:mate/screens/write/write_blog_screen.dart';

// Map pageMap = {
//   'home': 1,
//   'write': 2,
//   'profile': 3,
// };
// int _currentIndex = 0;

// List<Widget> displayScreen = [
//   HomeScreen(),
//   WriteScreen(),
//   ProfileScreen(),
// ];

// final PageStorageBucket bucket = PageStorageBucket();

// Widget bottomNavBar(BuildContext context, int pageNumber) {
//   return BottomNavigationBar(
//     currentIndex: _currentIndex,
//     items: [
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         title: Text('Home'),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.create),
//         title: Text('Write'),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         title: Text('Profile'),
//       ),
//     ],
//     onTap: (index){
//       _currentIndex = index;
//     },
//     elevation: 5,
//     selectedItemColor: themeColor5,
//     unselectedItemColor: themeColor3,
//     backgroundColor: themeColor2,

//   );
// }

// //  return BottomAppBar(
// //    color: themeColor2,
// //    elevation: 10.0,
// //    child: Hero(
// //      tag: 'bottomNavigationBar',
// //      child: Container(
// //        height: 70.0,
// //        width: double.infinity,
// //        // padding: EdgeInsets.all(10.0),
// //        child: Row(
// //          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //          crossAxisAlignment: CrossAxisAlignment.center,
// //          children: [
// //            Container(
// //              width: 75.0,
// //              height: 50.0,
// //              child: InkWell(
// //                child: customNavBarContainer(
// //                    context, 'Home', 'home', pageNumber, Icons.home),
// //                onTap: () {
// //                  gotoRoutePage(context, 'home', pageNumber);
// //                },
// //              ),
// //            ),
// //            Container(
// //              width: 75.0,
// //              height: 50.0,
// //              child: InkWell(
// //                child: customNavBarContainer(context, 'Write', 'write',
// //                    pageNumber, Icons.create),
// //                onTap: () {
// //                  gotoRoutePage(context, 'write', pageNumber);
// //                },
// //              ),
// //            ),
// //            Container(
// //              width: 75.0,
// //              height: 50.0,
// //              child: InkWell(
// //                child: customNavBarContainer(context, 'Profile',
// //                    'profile', pageNumber, Icons.person_outline),
// //                onTap: () {
// //                  gotoRoutePage(context, 'profile', pageNumber);
// //                }
// //              ),
// //            ),
// //          ],
// //        ),
// //      ),
// //    ),
// //  );
// //}
// //
// //Widget customNavBarContainer(BuildContext context, String title, String route,
// //    int pageNumber, IconData icon) {
// //  return Container(
// //    width: 75.0,
// //    height: 50.0,
// //    // color: Colors.grey,
// //    child: Column(
// //      children: [
// //        Icon(
// //          icon,
// //          color: pageNumber == pageMap[route] ? themeColor5 : themeColor3,
// //        ),
// //        SizedBox(height: 5.0),
// //        Text(
// //          title,
// //          style: TextStyle(
// //            color:
// //            pageNumber == pageMap[route] ? themeColor5 : themeColor3,
// //          ),
// //        ),
// //      ],
// //    ),
// //  );
// //}
// //
// //void gotoRoutePage(BuildContext context, String route, int pageNumber) {
// //  print('Page number : $pageNumber');
// //  if (pageMap[pageNumber] != 'route') {
// //    print('route : $route');
// //    Navigator.pushNamed(context, route);
// //  } else {
// //    print('Else : pageNumber $pageNumber');
// //  }
// //}
