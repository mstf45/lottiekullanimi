import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePages extends StatefulWidget {
  const LottiePages({Key? key}) : super(key: key);

  @override
  State<LottiePages> createState() => _LottiePagesState();
}

late AnimationController _controller;
String url = "https://assets8.lottiefiles.com/packages/lf20_qdhnrrok.json";
bool isLight = false;

class _LottiePagesState extends State<LottiePages>
    with TickerProviderStateMixin {
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (isLight == false) {
              isLight = true;
              _controller.forward();
            } else {
              isLight = false;
              _controller.reverse();
            }
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.network(
                url,
                controller: _controller,
              ),
            ),
            Text(isLight ? 'Kaydedildi' : 'Kaydet')
          ],
        ),
      ),
    );
  }
}
