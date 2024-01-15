import 'package:flutter/material.dart';

class BWButton extends StatelessWidget {
  const BWButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.loadPage,
  });

  final String text;
  final Widget loadPage;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
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