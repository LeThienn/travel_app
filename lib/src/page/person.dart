import 'package:flutter/material.dart';
import 'package:travel_app/components/widget_address_person.dart';
import 'package:travel_app/components/widget_image_person.dart';
import 'package:travel_app/components/widget_name_person.dart';

class PersonWidget extends StatefulWidget {
  const PersonWidget({Key? key}) : super(key: key);

  @override
  _PersonWidgetState createState() => _PersonWidgetState();
}

class _PersonWidgetState extends State<PersonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 40,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.logout_rounded,
                          color: Colors.red,
                        ),
                        style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all(const CircleBorder()),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(20)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white))),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30,),
            _buildImage(),
            const SizedBox(height: 10,),
            _buildNamePerson(),
            const SizedBox(height: 10,),
            _buildAddressPerson(),
          ],
        ),
      ),
    );
  }
}

// ignore: unused_element
Widget _buildImage() {
  return const ImagePersonWidget();
}

Widget _buildNamePerson(){
  return const NamePersonWidget();
}

Widget _buildAddressPerson(){
  return const AddressPersonWidget();
}
