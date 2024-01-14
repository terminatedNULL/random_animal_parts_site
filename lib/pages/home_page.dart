import 'package:flutter/material.dart';
import 'package:random_animal_parts_site/classes.dart';
import 'package:random_animal_parts_site/globals.dart' as globals;
import 'package:random_animal_parts_site/components/bw_button.dart';
import 'package:random_animal_parts_site/pages/about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/sunburst_dense.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[

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
                    image: const DecorationImage(
                      image: AssetImage("lib/images/leviathan_cross.png"),
                      scale: 9.5,
                      //TODO : Find a better fix for this image's centering
                      alignment: AlignmentDirectional(0, -0.25),
                    ),
                  ),
                  child: null,
                ),
              ),

              Column(
                children: [

                  const SizedBox(
                    height: 25,
                  ),

                  SizedBox(
                    width: 450,
                    height: 65,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "random animal parts",
                          style: TextStyle(
                              fontFamily: 'Langdon',
                              fontSize: 50,
                          )
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  const Row(
                    children: [
                      BW_Button(text: "About Us", loadPage: AboutPage(),),
                    ],
                  )

                ],
              ),

            ]
          ),
        ),
      ),
    );
  }
}