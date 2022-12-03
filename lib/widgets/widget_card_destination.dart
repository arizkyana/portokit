import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/configs/themes.dart';
import 'package:portokit/models/model_destination.dart';

class WidgetCardDestination extends StatelessWidget {
  final ModelDestination destination;
  const WidgetCardDestination({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: 200,
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      destination.photo,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            destination.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
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
                                SizedBox(
                                  width: 120,
                                  child: Flexible(
                                    child: Text(
                                      destination.location,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: PortoKitTheme.of(context)
                                            .generalMain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          destination.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border_rounded,
                          size: 20,
                          color: destination.isFavorite
                              ? Colors.red
                              : PortoKitTheme.of(context).generalMid,
                        ),
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
