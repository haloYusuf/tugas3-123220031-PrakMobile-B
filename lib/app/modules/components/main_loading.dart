import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

class MainLoading extends StatefulWidget {
  final double width;
  final double height;
  const MainLoading({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  State<MainLoading> createState() => _MainLoadingState();
}

class _MainLoadingState extends State<MainLoading>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Gif(
      fps: 10,
      width: widget.width,
      height: widget.height,
      autostart: Autostart.loop,
      placeholder: (context) => CircularProgressIndicator(),
      image: AssetImage(
        'assets/images/loading.gif',
      ),
    );
  }
}
