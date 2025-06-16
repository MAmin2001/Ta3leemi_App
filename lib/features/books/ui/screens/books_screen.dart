import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/widgets/spaces.dart';
import 'package:ta3leemi_project/features/books/ui/widgets/book_item.dart';
import 'package:ta3leemi_project/features/layout/ui/widgets/custom_app_bar.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

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
                CustomTextAppBar(),
                verticalSpace(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => BookItem(),
                  itemCount: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
