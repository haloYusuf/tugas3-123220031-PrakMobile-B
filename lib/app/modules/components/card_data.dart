import 'package:flutter/material.dart';

import '../../models/character_model.dart';

class CardData extends StatelessWidget {
  final CharacterModel data;
  final Function() handlePress;

  const CardData({
    super.key,
    required this.data,
    required this.handlePress,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(75),
            blurRadius: 5,
            spreadRadius: 2,
            offset: const Offset(0, 2), // bayangan ke bawah
          ),
        ],
      ),
      child: InkWell(
        onTap: handlePress,
        borderRadius: BorderRadius.circular(
          12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.network(
                width: 80,
                height: 80,
                gaplessPlayback: true,
                data.images.isEmpty || data.images[0].isEmpty
                    ? ''
                    : data.images[0],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/images/error_load.png',
                    width: 80,
                    height: 80,
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Father\t: ${data.family.father}\nCreator\t: ${data.family.creator}',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
