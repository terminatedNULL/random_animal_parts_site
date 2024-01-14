import 'package:flutter/material.dart';

class BW_Button extends StatelessWidget {
  const BW_Button({
    super.key,
    required this.text,
    required this.loadPage,
  });

  final String text;
  final Widget loadPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 35,
      child: OutlinedButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => loadPage
            )
          );
        },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 2,
            )
          ),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              )
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Langdon',
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        )
      )
    );
  }
}