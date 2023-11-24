import 'package:delivery_app/screens/dashboard_screen.dart';
import 'package:delivery_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Screen List
  List<Widget>screens=const [
    DashBoardScreen(),
    ProfileScreen()
  ];
  // Navigation Items
  List<NavItem>navList=[
    NavItem(title: "Home", icon: Icons.work_outline),
    NavItem(title: "Account", icon: Icons.person_2_outlined),
  ];

// current index
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body
      body: screens[index],
      // NavBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (val){
          setState(() {
            index=val;
          });
          },
        selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
          for(int i=0;i<navList.length;i++)...[BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                decoration: BoxDecoration(
                    color:index==i?Theme.of(context).primaryColor:Colors.transparent,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Icon(navList[i].icon,size: 16,),
              ),
              label: navList[i].title),]
        ]),




    );
  }
}
// Class for Navbar Option
class NavItem{
  final String title;
  final IconData icon;
  NavItem({
    required this.title,required this.icon
});
}


