import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none),
              ),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 40),
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
