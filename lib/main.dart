import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'features/splash/presentation/views/splash_view.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Bookly());
} // main()

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //     providers: const [
        //       // BlocProvider(create: (context) => ),
        //     ],
        //     child:
        MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              // textTheme: GoogleFonts.montserratTextTheme(),

              // textTheme: TextTheme() // we could use textTheme() to define
              // the text attributes that we need
              // -OR-
              // we could also instead use our custom Styles class
              // that contains the same text attributes
            ),
            home: const SplashView());
    // );
  } // build()
} // MyApp
