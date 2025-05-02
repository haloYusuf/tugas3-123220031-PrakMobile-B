import 'package:flutter/material.dart';

import '../../../core/constant/constant.dart';

class InfoDetail extends StatelessWidget {
  final String title;
  final Widget content;
  const InfoDetail({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Constant.secondaryColor.withAlpha(75),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              spacing: 1,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Constant.onSecondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Constant.onSecondaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                )
              ],
            ),
            content,
          ],
        ),
      ),
    );
  }
}
