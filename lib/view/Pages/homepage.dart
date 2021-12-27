import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nla_author_app/services/timeOfDay.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(getDayTime(), style: GoogleFonts.robotoSlab(fontSize: 35)),
              SizedBox(
                height: 13,
              ),
              Text("which do you want to do today"),
               SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(200, 40)),
                onPressed: () {},
                child: Text('Add Past Questions'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(200, 40)),
                onPressed: () {},
                child: Text('Add laws'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
