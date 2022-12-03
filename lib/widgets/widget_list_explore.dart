import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/api/api_destination.dart';
import 'package:portokit/configs/themes.dart';
import 'package:portokit/models/model_destination.dart';
import 'package:portokit/widgets/widget_card_destination.dart';
import 'package:portokit/widgets/widget_card_explore.dart';
import 'package:portokit/widgets/widget_search.dart';
import 'package:portokit/widgets/widget_section.dart';

class WidgetListExplore extends StatelessWidget {
  const WidgetListExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiDestination.getDestinations(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            child: Text('Loading'),
          );
        }
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetSection(
                title: "More to Explore",
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 12,
                  right: 16,
                ),
                height: 110,
                child: ListView.builder(
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.hasData ? snapshot.data!.length : 0,
                  itemBuilder: ((context, index) {
                    ModelDestination destination = snapshot.data![index];
                    return WidgetCardExplore(
                      destination: destination,
                    );
                  }),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
