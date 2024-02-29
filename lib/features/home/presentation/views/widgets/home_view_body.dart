import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
} // HomeViewBody

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: <Widget>[
      CustomAppBar(),
    ]);
  } // build()
} // _HomeViewBodyState

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 24),
          const Spacer(),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Image.asset(AssetsData.search,
                  height: 24.0, color: Colors.white))
        ],
      ),
    );
  } // build()
} // CustomAppBar
