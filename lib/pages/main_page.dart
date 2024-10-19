import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:translate_mobile/widgets/card_1.dart';
import 'package:translate_mobile/widgets/card_2.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/hero.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svgs/logo.svg'),

              const SizedBox(height: 40,),

              // Card 1
              const TranslateCard1(),

              const SizedBox(height: 15),

              // Card 2 
              const TranslateCard2()
            ],
          ),
        ),
      ),
    );
  }
}
