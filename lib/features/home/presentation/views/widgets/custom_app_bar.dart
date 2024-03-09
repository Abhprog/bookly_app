import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        child: Row(children: [
          Image.asset(AssetsData.assetLogo, height: 24),
          const Spacer(),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Image.asset(AssetsData.assetSearch,
                  height: 24.0, color: Colors.white))
        ]));
  } // build()
} // CustomAppBar
