import 'package:flutter/material.dart';
import 'package:moviepediaapp/constants/constants.dart';

class BottomBarButton extends StatelessWidget {
  const BottomBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MyColors.kAccentColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(MyIcons.playButton),
            size: 25,
            color: MyColors.kPrimaryLightTextcolor,
          ),
          Text(
            ' Watch Trailer',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
