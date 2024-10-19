import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TranslateCard2 extends StatefulWidget {
  const TranslateCard2({super.key});

  @override
  State<TranslateCard2> createState() => _TranslateCard2State();
}

class _TranslateCard2State extends State<TranslateCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 270,
                width: 420,
                decoration: BoxDecoration(
                  color: const Color(0xff131829),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xff434b53),
                    width: 2,
                  ),
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
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'French',
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
                              'Spanish',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),

                          const SizedBox( width: 50,),

                          InkWell(
                            onTap: () {},

                            child: Container(
                              padding: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color(0xff434b53),
                                  width: 2.0
                                ),
                              ),
                              child: SvgPicture.asset(
                                'assets/svgs/Horizontal_top_left_main.svg', 
                                height: 20,
                                width: 20,
                              ),
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
                          'Bonjour, comment vas-tu?',
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
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff434b53),
                        width: 2.0,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/svgs/Copy.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff434b53),
                        width: 2.0,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/svgs/sound_max_fill.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
                    const SizedBox(height: 10),
                  ],
                ),
              );
  }
}