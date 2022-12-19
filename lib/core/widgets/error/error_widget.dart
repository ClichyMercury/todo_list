import 'package:flutter/material.dart';


class CustomErrorWidget extends StatelessWidget {
  final Function()? onPressed;
  final String msg;
  final IconData icon;
  final double iconSize;
  const CustomErrorWidget({
    Key? key,
    this.onPressed,
    required this.msg,
    required this.icon,
    this.iconSize = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    // final theme = Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: iconSize,
              color: Colors.white,
            ),
            const SizedBox(height: 5),
            Text(msg, style: const TextStyle(color: Colors.white),),
            const SizedBox(height: 10),
            TextButton(
              onPressed: onPressed,
              child: const Text(
                  "Try again"), /* style: TextButton.styleFrom(primarys: AppColors.mainGreen) */
            ),
          ],
        ),
      ),
    );
  }
}
