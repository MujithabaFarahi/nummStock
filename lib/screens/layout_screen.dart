import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numm/screens/add_item.dart';
import 'package:numm/screens/add_order.dart';
import 'package:numm/screens/home_screen.dart';
import 'package:numm/screens/view_sales.dart';
import 'package:numm/theme/color_palette.dart';

class LayoutScreen extends StatefulWidget {
  final int pageIndex;
  const LayoutScreen({super.key, required this.pageIndex});

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.pageIndex;
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // Disable swipe gesture
        children: const [
          HomeScreen(),
          AddItem(),
          AddOrder(),
          ViewSales(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/icons/homefill.svg'
                    : 'assets/icons/home.svg',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 1
                    ? 'assets/icons/addfill.svg'
                    : 'assets/icons/add.svg',
              ),
              label: 'Add Item',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? const Icon(
                      Icons.add_to_photos_rounded,
                      color: ColorPalette.primaryBlue,
                    )
                  : const Icon(
                      Icons.add_to_photos_outlined,
                      color: ColorPalette.primaryTextColor,
                    ),
              label: 'Add Order',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? const Icon(
                      Icons.view_comfy_rounded,
                      color: ColorPalette.primaryBlue,
                    )
                  : const Icon(
                      Icons.view_comfy_outlined,
                      color: ColorPalette.primaryTextColor,
                    ),
              label: 'View',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorPalette.primaryBlue,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
