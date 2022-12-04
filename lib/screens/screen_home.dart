import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portokit/configs/themes.dart';

class WidgetHeader extends StatelessWidget {
  const WidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            child: SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset(
                'assets/icons/location-point.svg',
                color: PortoKitTheme.of(context).generalLight,
                semanticsLabel: "Location",
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                child: Text(
                  'Gram Bistro',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: PortoKitTheme.of(context).generalMid,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                color: PortoKitTheme.of(context).generalMain,
                semanticsLabel: "Menu",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetSearch extends StatefulWidget {
  const WidgetSearch({super.key});

  @override
  State<WidgetSearch> createState() => _WidgetSearchState();
}

class _WidgetSearchState extends State<WidgetSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: PortoKitTheme.of(context).white,
        ),
        child: Row(
          children: [
            Container(
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: PortoKitTheme.of(context).generalLight,
                  semanticsLabel: "Search",
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(
                  'assets/icons/filter.svg',
                  color: PortoKitTheme.of(context).orangeMain,
                  semanticsLabel: "Filter",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetItemBanner extends StatelessWidget {
  const WidgetItemBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(
        right: 10,
      ),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: PortoKitTheme.of(context).generalDark,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Product of the day',
                      style: TextStyle(
                        color: PortoKitTheme.of(context).generalMid,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Row(
                    children: [
                      Expanded(
                        child: Flexible(
                          child: Text(
                            'Avocado Chicken Salad',
                            style: TextStyle(
                              color: PortoKitTheme.of(context).generalSoft,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      '10.40',
                      style: TextStyle(
                        color: PortoKitTheme.of(context).orangeMain,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              'Image',
              style: TextStyle(
                color: PortoKitTheme.of(context).white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetListBanner extends StatelessWidget {
  const WidgetListBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return WidgetItemBanner();
          }),
    );
  }
}

class WidgetItemFilter extends StatelessWidget {
  const WidgetItemFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          right: 10,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: PortoKitTheme.of(context).orangeMid,
        ),
        child: Text(
          'All Dishes',
          style: TextStyle(
            color: PortoKitTheme.of(context).white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class WidgetFilters extends StatefulWidget {
  const WidgetFilters({super.key});

  @override
  State<WidgetFilters> createState() => _WidgetFiltersState();
}

class _WidgetFiltersState extends State<WidgetFilters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: double.infinity,
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return WidgetItemFilter();
          }),
    );
  }
}

class WidgetItemFood extends StatelessWidget {
  const WidgetItemFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: PortoKitTheme.of(context).white,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('image'),
                    ),
                  ),
                  Text('Egg Toast'),
                  Text('10.40'),
                ],
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: PortoKitTheme.of(context).generalLight,
                ),
                child: Text(
                  'rate 4.1',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetListFoods extends StatelessWidget {
  const WidgetListFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, builder) {
            return WidgetItemFood();
          }),
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PortoKitTheme.of(context).generalSoft,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                WidgetHeader(),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Choose the best dish for you',
                    style: TextStyle(
                      fontSize: 22,
                      color: PortoKitTheme.of(context).generalMain,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                WidgetSearch(),
                SizedBox(
                  height: 15,
                ),
                WidgetListBanner(),
                SizedBox(
                  height: 15,
                ),
                WidgetFilters(),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Most Popular',
                    style: TextStyle(
                      color: PortoKitTheme.of(context).generalMain,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                WidgetListFoods(),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Salad',
                    style: TextStyle(
                      color: PortoKitTheme.of(context).generalMain,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                WidgetListFoods(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
