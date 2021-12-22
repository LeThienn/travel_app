import 'package:flutter/material.dart';
import 'package:travel_app/components/widget_person/widget_address_person.dart';
import 'package:travel_app/components/widget_person/widget_image_person.dart';
import 'package:travel_app/components/widget_person/widget_info_person.dart';
import 'package:travel_app/components/widget_person/widget_name_person.dart';

class PersonWidget extends StatefulWidget {
  const PersonWidget({Key? key}) : super(key: key);

  @override
  _PersonWidgetState createState() => _PersonWidgetState();
}

class _PersonWidgetState extends State<PersonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
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
                  padding: const EdgeInsets.fromLTRB(0, 40, 20, 0),
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
                              const EdgeInsets.all(15)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          _buildImage(),
          const SizedBox(
            height: 20,
          ),
          _buildNamePerson(),
          const SizedBox(
            height: 10,
          ),
          _buildAddressPerson(),
          const SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              children: [
                const SizedBox(height: 50 ,),
                _buildInfoPerson(),
                // const SizedBox(height: 10,),
                // const Divider(height: 1, thickness: 1, color: Colors.grey,indent: 90,endIndent: 44),
                // _buildInfoPerson(),
                // const SizedBox(height: 10,),
                // const Divider(height: 1, thickness: 1, color: Colors.grey,indent: 90,endIndent: 44),
                // _buildInfoPerson(),
                // const SizedBox(height: 10,),
                // const Divider(height: 1, thickness: 1, color: Colors.grey,indent: 90,endIndent: 44),
                // _buildInfoPerson(),
              ],
            ),
           
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: unused_element
Widget _buildImage() {
  return const ImagePersonWidget();
}

Widget _buildNamePerson() {
  return const NamePersonWidget();
}

Widget _buildAddressPerson() {
  return const AddressPersonWidget();
}

Widget _buildInfoPerson() {
  return const InfoPersonWidget();
}
