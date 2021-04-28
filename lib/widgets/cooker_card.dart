import 'package:eatbio_project/models/cooker_model.dart';

import 'package:eatbio_project/pages/cooker_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/darna_model.dart';

class CookerCard extends StatelessWidget {
  const CookerCard({
    Key key,
    @required this.barber,
    this.salon,
    this.margin,
  }) : super(key: key);

  final CookerModel barber;
  final DarnaModel salon;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(25.0),
      onTap: () {
        Get.to(
          CookerPage(
            barber: barber,
            salon: salon,
          ),
        );
      },
      child: Container(
        width: 90.0,
        margin: margin,
        child: Column(
          children: [
            Container(
              width: 65.0,
              height: 65.0,
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(color: theme.primaryColor),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(barber.image),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              barber.name,
              style: theme.textTheme.bodyText2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(height: 2.0),
            Text(
              barber.position,
              style: theme.textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
