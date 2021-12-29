import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
         Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.06),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: size.height * 0.040,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none),
              ),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding:  EdgeInsets.only(top: size.height * 0.02, right: size.width * 0.05),
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.logout_rounded,
                  color: Colors.red,
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder()),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
            )),
      ],
    );
  }
}
