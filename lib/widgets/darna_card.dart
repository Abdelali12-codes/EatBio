import 'package:eatbio_project/models/darna_model.dart';
import 'package:eatbio_project/pages/cooker_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DarnaCard extends StatelessWidget {
  final DarnaModel salon;
  final EdgeInsetsGeometry margin;

  const DarnaCard({Key key, @required this.salon, this.margin})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 200.0,
      margin: margin,
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: () {
          Get.to(CookerPage(salon: salon));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                salon.image,
                width: MediaQuery.of(context).size.width,
                height: 130.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    salon.name,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headline3,
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      SmoothStarRating(
                        color: Color(0xFFFFD700),
                        spacing: 5.0,
                        borderColor: theme.unselectedWidgetColor,
                        allowHalfRating: false,
                        starCount: 5,
                        isReadOnly: true,
                        rating: salon.rating,
                        size: 14.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "(${salon.totalReview} reviews)",
                        style:
                            theme.textTheme.subtitle2.copyWith(fontSize: 10.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    salon.address,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.subtitle2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
