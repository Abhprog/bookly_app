import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
} // HomeView

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
    );
  } // build()
} // _HomeViewState
