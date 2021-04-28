import 'package:eatbio_project/models/galler_model.dart';
import 'package:eatbio_project/models/darna_model.dart';
import 'package:eatbio_project/widgets/galler_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PortfolioTabBarView extends StatelessWidget {
  const PortfolioTabBarView({
    Key key,
    this.salon,
  }) : super(key: key);

  final DarnaModel salon;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: allGalleryList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      itemBuilder: (BuildContext context, int index) {
        var gallery = allGalleryList[index];
        return GalleryCard(
          gallery: gallery,
          salon: salon,
        );
      },
      staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
