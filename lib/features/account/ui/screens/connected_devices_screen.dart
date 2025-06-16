import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/account/ui/widgets/connected_device_item.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';

class ConnectedDevicesScreen extends StatelessWidget {
  const ConnectedDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomIconAppBar(),
                verticalSpace(height: 30.0),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ConnectedDeviceItem(),
                  itemCount: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
