import 'package:flutter/material.dart';

class VideoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FittedBox(
            fit: BoxFit.contain,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 1,
                minHeight: 1,
              ),
              child: Image.asset('assets/images/example_profile_picture.png'),
            ),
          ),
        ),
      ),
    );
  }
}
