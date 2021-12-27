import 'package:flutter/material.dart';
import 'package:travel_app/src/components/widget_profile/widget_address_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_image_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_info_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_name_profile.dart';
import 'package:travel_app/src/components/widget_profile/widget_title_settings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreentState createState() => _ProfileScreentState();
}

class _ProfileScreentState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // gobal key
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              _buildSettings(),
              SizedBox(
                height: size.height * 0.025,
              ),
              _buildImage(),
              SizedBox(
                height: size.height * 0.025,
              ),
              _buildNamePerson(),
              SizedBox(
                height: size.height * 0.025,
              ),
              _buildAddressPerson(),
            ],
          ),
          SizedBox(
            height: size.height * 0.037,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Column(
              children: [
                _buildGenaral(size),
                const InfoProfileWidget(
                  name: "My tickets",
                  iconData: Icons.airplane_ticket_outlined,
                ),
                SizedBox(
                  height: size.height * 0.017,
                ),
                const Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                    indent: 85,
                    endIndent: 48),
                const InfoProfileWidget(
                    name: "Profile settings", iconData: Icons.person_outline),
                SizedBox(
                  height: size.height * 0.017,
                ),
                const Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                    indent: 85,
                    endIndent: 48),
                const InfoProfileWidget(
                  name: "Payment",
                  iconData: Icons.payment_outlined,
                ),
                SizedBox(
                  height: size.height * 0.017,
                ),
                const Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                    indent: 85,
                    endIndent: 48),
                const InfoProfileWidget(
                  name: "Notification",
                  iconData: Icons.notifications_active_outlined,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildGenaral(Size size) {
  return Padding(
    padding:  EdgeInsets.only(top: size.height * 0.03, right: size.width * 0.65),
    child: Text(
      "General",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size.height * 0.022,
          color: Colors.grey),
    ),
  );
}

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
