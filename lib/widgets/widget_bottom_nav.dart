import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/configs/themes.dart';

class WidgetBottomNav extends StatefulWidget {
  const WidgetBottomNav({super.key});

  @override
  State<WidgetBottomNav> createState() => _WidgetBottomNavState();
}

class _WidgetBottomNavState extends State<WidgetBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: SizedBox(
          height: 56,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: PortoKitTheme.of(context).generalSoft,
                  // spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0, -8),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MenuItem(
                    selected: true,
                    icon: Icons.home_filled,
                    onTap: () {},
                  ),
                  MenuItem(
                    selected: false,
                    icon: Icons.park_outlined,
                    onTap: () {},
                  ),
                  MenuItem(
                    selected: false,
                    icon: Icons.favorite_border_rounded,
                    onTap: () {},
                  ),
                  MenuItem(
                    selected: false,
                    icon: Icons.chat_rounded,
                    onTap: () {},
                  ),
                  MenuItem(
                    selected: false,
                    icon: Icons.account_circle_outlined,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final bool selected;

  final IconData icon;
  final void Function() onTap;
  const MenuItem({
    super.key,
    required this.selected,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.symmetric(
        //   horizontal: 25,
        // ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: selected
                  ? PortoKitTheme.of(context).blueDark
                  : PortoKitTheme.of(context).generalMid,
              size: 30,
            ),
            SizedBox(
              height: 5,
            ),
            if (selected)
              Container(
                height: 3,
                width: 18,
                decoration: BoxDecoration(
                  color: selected
                      ? PortoKitTheme.of(context).blueDark
                      : PortoKitTheme.of(context).generalMid,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
