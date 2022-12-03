import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/api/api_destination.dart';
import 'package:portokit/cores/core_params.dart';
import 'package:portokit/models/model_destination.dart';
import 'package:portokit/widgets/widget_card_destination.dart';
import 'package:portokit/widgets/widget_section.dart';

class WidgetListDestination extends StatelessWidget {
  WidgetListDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiDestination.getDestinations(
            // Params(
            //   key: "rating",
            //   value: 5,
            //   operators: Operators.$between,
            // ),
            ),
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
                  title: "Popular Destination",
                  onSeeMore: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 16,
                  ),
                  height: 280,
                  child: ListView.builder(
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.hasData ? snapshot.data?.length : 0,
                    itemBuilder: ((context, index) {
                      ModelDestination destination = snapshot.data![index];
                      return WidgetCardDestination(
                        destination: destination,
                      );
                    }),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
