import 'package:flutter/material.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/main/home.dart';
import 'package:mgsapp/view/main/message.dart';
import 'package:mgsapp/view/main/profile.dart';
import 'package:mgsapp/view/main/project.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

// optional, only if using "MotionTabBarController" to programmatically change the tab
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.title});

  final String? title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // TabController _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.background,
        bottomNavigationBar: MotionTabBar(
          controller:
              _motionTabBarController, // ADD THIS if you need to change your tab programmatically
          initialSelectedTab: "Home",
          useSafeArea: true, // default: true, apply safe area wrapper
          labelAlwaysVisible:
              true, // default: false, set to "true" if you need to always show labels
          labels: const ["Home", "Project", "Message", "Profile"],

          //// use default icon (with IconData)
          // icons: const [
          //   Icons.dashboard,
          //   Icons.home,
          //   Icons.people_alt,
          //   Icons.settings,
          // ],

          // use custom widget as display Icon
          iconWidgets: [
            _generateCustomIcon(Icons.home),
            _generateCustomIcon(Icons.dashboard),
            _generateCustomIcon(Icons.message),
            _generateCustomIcon(Icons.person),
          ],

          // // optional badges, length must be same with labels
          // badges: [
          //   // Default Motion Badge Widget
          //   const MotionBadgeWidget(
          //     text: '99+',
          //     textColor: Colors.white, // optional, default to Colors.white
          //     color: Colors.blue, // optional, default to Colors.red
          //     size: 18, // optional, default to 18
          //   ),

          //   // custom badge Widget
          //   Container(
          //     color: Colors.black,
          //     padding: const EdgeInsets.all(2),
          //     child: const Text(
          //       '48',
          //       style: TextStyle(fontSize: 14, color: Colors.white),
          //     ),
          //   ),

          //   // allow null
          //   null,

          //   // Default Motion Badge Widget with indicator only
          //   const MotionBadgeWidget(
          //     isIndicator: true,
          //     color: Colors.blue, // optional, default to Colors.red
          //     size: 5, // optional, default to 5,
          //     show: true, // true / false
          //   ),
          // ],
          tabSize: 50,
          tabBarHeight: 55,
          textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          tabIconColor: Colors.blue[600],
          tabIconSize: 28.0,
          tabIconSelectedSize: 32.0,
          tabSelectedColor: AppColors.textdetail,
          tabIconSelectedColor: AppColors.texthead,
          tabBarColor: AppColors.texthead,
          onTabItemSelected: (int value) {
            setState(() {
              _motionTabBarController!.index = value;
            });
          },
        ),
        body: TabBarView(
          physics:
              const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
          controller: _motionTabBarController,
          children: <Widget>[
            HomePageTabController(
              title: "Mgs Application",
              controller: _motionTabBarController!,
              context: context,
            ),
            ProjectPageTabController(
              title: "Project",
              controller: _motionTabBarController!,
              context: context,
            ),
            MessagePageTabController(
              title: "Message",
              controller: _motionTabBarController!,
              context: context,
            ),
            ProfilePageTabController(
              title: "Profile",
              controller: _motionTabBarController!,
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _generateCustomIcon(IconData icon) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(icon, color: Colors.white),
        // child: SvgPicture.string(
        //   svgString,
        //   width: 24,
        //   height: 24,
        //   colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        // ),
      ),
    ),
  );
}
