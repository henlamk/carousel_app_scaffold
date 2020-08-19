import 'package:carousel_app_scaffold/models/undetermined.dart';
import 'package:carousel_app_scaffold/ui/shared/ui_helpers.dart';
import 'package:carousel_app_scaffold/ui/widgets/call_to_action.dart';
import 'package:flutter/material.dart';

class CarouselEntry extends StatelessWidget {
  final Undetermined data;
  final Function onTap;

  const CarouselEntry({
    Key key,
    this.data,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(data.imagePath),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: screenHeight(context) * 0.3,
            child: Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title,
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            verticalSpaceSmall,
                            Text(
                              data.pitch,
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      horizontalSpaceMedium,
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            data.logoPath,
                            fit: BoxFit.contain,
                            height: 75,
                            width: 75,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 48.0),
                    child: CallToAction(
                      text: 'Ansehen',
                      onClick: () => onTap(data),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
