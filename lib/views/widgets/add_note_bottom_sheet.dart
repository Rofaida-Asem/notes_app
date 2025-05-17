import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_botton.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'title',
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: CustomTextField(
                hintText: 'content',
                maxLines: 5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0, bottom: 40),
              child: CustomButton(),
            ),
          ],
        ),
      ),
    );
  }
}
