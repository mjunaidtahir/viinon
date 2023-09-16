import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import 'package:viinon/gen/colors.gen.dart';
import 'package:viinon/screens/home_screen/home_screen.dart';

class MainScreen extends GetView<BottomBarController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomBarController = Get.put(BottomBarController(), permanent: true);
    return GetBuilder<BottomBarController>(
      init: bottomBarController,
      autoRemove: false,
      builder: (context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: LazyLoadIndexedStack(
              index: bottomBarController.selectedIndex,
              children: const [
                HomeScreen(),
                HomeScreen(),
                HomeScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              )
            ],
            currentIndex: bottomBarController.selectedIndex,
            selectedItemColor: ColorName.primaryGreen,
            unselectedItemColor: Colors.grey,
            onTap: bottomBarController.onItemTapped,
          ),
        );
      },
    );
  }
}

class BottomBarController extends GetxController {
  final scrollController = ScrollController();
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    if (selectedIndex == 0) {
      // scrollUp();
    }
    update();
  }

  void scrollUp() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void onInit() {
    selectedIndex = 0;
    super.onInit();
  }
}
