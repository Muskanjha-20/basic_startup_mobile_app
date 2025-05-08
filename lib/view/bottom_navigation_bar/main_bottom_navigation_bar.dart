import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';
import 'package:startup_social_app/view/screens/home_screen.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int selectedIndex = 0;

  final List<Widget> screenOptions = [
    HomeScreen(),
    Text("data   1"),
    Text("data   2"),
    Text("data   3"),
    Text("data   4"),
    Text("data   5"),
    // ExpensesScreen(),
    // EmployeeScreen(),
    // TaskTabScreen(),
    // EmployeeTaskScreen(),
    // DashboardScreen(),
    // DashboardScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //   child: CustomAppBar(title: 'Leave'),
      // ),
      body: screenOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyTextColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.group_add), label: 'Group'),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_chat_unread_outlined),
            label: 'Message',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
        // currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
