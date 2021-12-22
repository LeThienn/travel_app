import 'package:flutter/material.dart';
import 'package:travel_app/src/components/widget_profile/widget_address_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_image_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_info_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_name_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_settings.dart';

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
        children: [
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  _buildSettings(),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildImage(),
                  const SizedBox(
                    height: 25,
                  ),
                  _buildNamePerson(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildAddressPerson(),
                ],
              )),
          const SizedBox(
            height: 23,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 40)),
                      Text(
                        "General",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  const InfoProfileWidget(
                    name: "My tickets",
                    iconData: Icons.airplane_ticket_outlined,
                  ),
                  const InfoProfileWidget(
                      name: "Profile settings", iconData: Icons.person_outline),
                  const InfoProfileWidget(
                    name: "Payment",
                    iconData: Icons.payment_outlined,
                  ),
                  const InfoProfileWidget(
                    name: "Notification",
                    iconData: Icons.notifications_active_outlined,
                  )
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
          )
        ],
      ),
    );
  }
}

// ignore: unused_element
Widget _buildSettings() {
  return const SettingsWidget();
}

Widget _buildImage() {
  return const ImageProfileWidget();
}

Widget _buildNamePerson() {
  return const NameProfileWidget();
}

Widget _buildAddressPerson() {
  return const AddressProfileWidget();
}
