import 'package:flutter/material.dart';

Container buildButtonWidget(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.black;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

Widget buildSizedBoxWidget(double definedHeight)
{
  return SizedBox(
    height: definedHeight,
  );
}

Widget buildErrorContainer(bool isVisible , String requiredText) {
  return Container(
      child: isVisible
          ? Visibility(
          visible: isVisible,
          child: Container(
            color: Colors.red[50],
            width: double.infinity,
            height: 35,
            padding: const EdgeInsets.all(8),
            child:  Text(
              requiredText,
              style: const TextStyle(color: Colors.red),
            ),
          ))
          : Container());
}

Widget navigationTextWidget(BuildContext context , String initialText, Widget screenName, String laterText) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Text(initialText,
          style: TextStyle(color: Colors.grey)),
      InkWell(
        onTap: () {
          if(laterText == "Sign In")
            {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => screenName));
            }
          else
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => screenName));
            }

        },
        child: Text(
          laterText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}