import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moviepediaapp/constants/constants.dart';
import 'package:moviepediaapp/pages/details_page.dart';
import 'package:moviepediaapp/widgets/icon_widget.dart';
import 'package:moviepediaapp/widgets/text1.dart';
import 'package:moviepediaapp/widgets/text2.dart';

class FavCard extends StatelessWidget {
  final String imgUrl, title, overview, rating, runtime, releaseDate;
  const FavCard({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.overview,
    required this.rating,
    required this.runtime,
    required this.releaseDate,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const DetailsPage());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.backgroundColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              height: 180,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text1(text: title),
                  const SizedBox(height: 8),
                  Text2(text: overview, maxLines: 3),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Text2(
                          text: rating,
                          fontSize: 12,
                          isBold: true,
                        ),
                      ),
                      const Text2(
                        text: ' | 124 min | ',
                        fontSize: 12,
                        isBold: true,
                      ),
                      Text2(
                        text: releaseDate,
                        fontSize: 12,
                        isBold: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: MyColors.kAccentColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(
                              AssetImage(MyIcons.playButton),
                              size: 15,
                              color: MyColors.kPrimaryLightTextcolor,
                            ),
                            Text(
                              ' Watch',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const IconWidget(iconPath: MyIcons.favourite)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
