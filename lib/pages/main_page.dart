import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Container(
                height: 270,
                width: 420,
                decoration: BoxDecoration(
                  color: const Color(0xff252736),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // Row of buttons at the top
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Detect Language',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'English',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color(0xff4d5562)),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 4, vertical: 1)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'French',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Spanish',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Línea divisoria
                    Container(
                      height: 2,
                      color: const Color(0xff353c4b),
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    ),

                    // Sample text aligned to the left
                    const Padding(
                      padding:  EdgeInsets.only(left: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Hello, how are you?',
                          style:  TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),

                    // Buttons SVG
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/Copy.svg', 
                            height: 26,
                            width: 26,
                          ),
                          const SizedBox(width: 10),
                          SvgPicture.asset(
                            'assets/svgs/sound_max_fill.svg', 
                            height: 26,
                            width: 26,
                          ),
                          const SizedBox(width: 195),
                          TextButton(
                            
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color(0xff3762e3)),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 1)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  'assets/svgs/Sort_alfa.svg', 
                                  height: 24, 
                                  width: 24,
                                  ),
                                const SizedBox(width: 4),
                                const Text(
                              'Translate',
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Card 2 
              Container(
                height: 270,
                width: 420,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
