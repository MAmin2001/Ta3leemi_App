import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/account/ui/widgets/charge_code_item.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';

class ChargeCodesScreen extends StatelessWidget {
  const ChargeCodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomIconAppBar(),
                verticalSpace(height: 30),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:
                      (context, index) => ChargeCodeItem(
                        item: 'DxNL2n-1WOPBH-xmZH6o',
                        dateTime: '25 May 2025',
                        price: '200.0',
                      ),
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
