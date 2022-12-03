import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/configs/themes.dart';
import 'package:portokit/models/model_destination.dart';

class WidgetCardExplore extends StatelessWidget {
  final ModelDestination destination;
  const WidgetCardExplore({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    destination.photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: PortoKitTheme.of(context).blueDark,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            destination.location,
                            style: TextStyle(
                              fontSize: 12,
                              color: PortoKitTheme.of(context).generalMain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
