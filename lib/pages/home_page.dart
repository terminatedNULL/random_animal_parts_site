//Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Backend imports
import 'package:random_animal_parts_site/classes.dart';
import 'package:random_animal_parts_site/globals.dart' as globals;

//Page imports
import 'package:random_animal_parts_site/pages/about_page.dart';

//Component imports
import 'package:random_animal_parts_site/components/infinite_animation.dart';
import 'package:random_animal_parts_site/components/bw_button.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[

              //Spinning background
              Center(
                child: InfiniteAnimation(
                  durationInSeconds: 90,
                  child: Transform.scale(
                    scale: 4,
                    child: SvgPicture.asset("lib/images/sunburst_dense_vector.svg"),
                  ),
                ),
              ),

              //Center Logo
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 6,
                    ),
                  ),
                  child: Transform.scale(
                    scale: 0.85,
                    alignment: const AlignmentDirectional(0, -0.75),
                    child: SvgPicture.asset(
                      "lib/images/leviathan_cross.svg",
                    ),
                  ),
                ),
              ),

              //Header
              const Column(
                children: [

                  SizedBox(
                    height: 25,
                  ),

                  //Text Logo
                  Center (
                    child: Expanded(
                      child: Row(
                        children: [
                          SizedBox(width: 100),

                          Text(
                              "random animal parts",
                              style: TextStyle(
                                fontFamily: 'Langdon',
                                fontSize: 70,
                              )
                          ),

                          SizedBox(width: 100),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //Page Buttons
                  Row(
                    children: [
                      SizedBox(width: 25),
                      BWButton(text: "About Us", width: 100, height: 35, loadPage: AboutPage(),),
                    ],
                  )

                ],
              ),

            ]
          ),
        ),
    );
  }
}