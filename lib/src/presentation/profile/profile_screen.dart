import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/base/base.dart';
import 'package:travel_app/src/presentation/profile/component/widget_address_profile.dart';
import 'package:travel_app/src/presentation/profile/component/widget_image_profile.dart';
import 'package:travel_app/src/presentation/profile/component/widget_info_profile.dart';
import 'package:travel_app/src/presentation/profile/component/widget_name_profile.dart';
import 'package:travel_app/src/presentation/profile/component/widget_title_settings.dart';
import 'package:travel_app/src/presentation/profile/profile_viewmodel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreentState createState() => _ProfileScreentState();
}

class _ProfileScreentState extends State<ProfileScreen> {
  ProfileViewModel? _viewModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseWidget<ProfileViewModel>(
      onViewModelReady: (viewModel) {
        _viewModel = viewModel?..init();
      },
      viewModel: ProfileViewModel(),
      builder: (context, viewModel, child) {
        return Container(
          color: Colors.grey.shade100,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: 33.h,
                    ),
                    _buildSettings(),
                    SizedBox(
                      height: 25.h,
                    ),
                    _buildImage(),
                    SizedBox(
                      height: 23.h,
                    ),
                    _buildNamePerson(),
                    SizedBox(
                      height: 20.h,
                    ),
                    _buildAddressPerson(),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    _buildGenaral(size),
                    const InfoProfileWidget(
                      name: "My tickets",
                      iconData: Icons.airplane_ticket_outlined,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey,
                        indent: 85,
                        endIndent: 48),
                    const InfoProfileWidget(
                        name: "Profile settings",
                        iconData: Icons.person_outline),
                    SizedBox(
                      height: 10.h,
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
                      height: 10.h,
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
      },
    );
  }
}

Widget _buildGenaral(Size size) {
  return Padding(
    padding: EdgeInsets.only(top: 20.h, right: 230.w),
    child: Text(
      "General",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
          color: Colors.grey),
    ),
  );
}

Widget _buildSettings() {
  return const TitleSettingsWidget();
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
