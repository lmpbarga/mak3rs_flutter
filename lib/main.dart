import 'package:flutter/material.dart';
import 'constants/constants.dart' as constants;
import 'constants/palette.dart' as palette;
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: palette.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/polygon.png',
              ),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                constants.mak3rs.toUpperCase(),
                style: GoogleFonts.quantico(
                  fontSize: 52,
                  fontWeight: FontWeight.w400,
                  color: palette.white,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              const Image(
                image: AssetImage('assets/images/lamp.png'),
                width: 233,
                height: 305,
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                constants.yourIdea,
                style: GoogleFonts.quantico(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: palette.black,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              TextButton(
                onPressed: () => print('press'),
                style: TextButton.styleFrom(
                  backgroundColor: palette.grey,
                  fixedSize: const Size(328, 64),
                  primary: palette.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  constants.start,
                  style: GoogleFonts.spartan(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: palette.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
