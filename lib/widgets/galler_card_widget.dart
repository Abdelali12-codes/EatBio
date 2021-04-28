import 'package:eatbio_project/models/galler_model.dart';
import 'package:eatbio_project/models/darna_model.dart';
import 'package:eatbio_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class GalleryCard extends StatelessWidget {
  final GalleryModel gallery;
  final DarnaModel salon;

  const GalleryCard({Key key, this.gallery, this.salon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.to(
        //   GalleryDetailPage(
        //     controller: VideoPlayerController.asset(gallery.file),
        //     gallery: gallery,
        //   ),
        // );
      },
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                gallery.thumbnail,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 5.0,
              top: 5.0,
              child: SvgPicture.asset(
                'assets/icons/multiple_image.svg',
                width: 18.0,
                height: 18.0,
                color: kBackgroundLightColor.withOpacity(.8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
