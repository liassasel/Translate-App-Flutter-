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
                child: Stack(
                  children: [
                    
                    // Fondo de la tarjeta
                    Opacity(
                      opacity: 0.9,
                      child: DecoratedBox(
                        
                        decoration: BoxDecoration(
                          color: const Color(0xff252736),
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        child: Container(
                          
                        ),
                      ),
                    ),
                    // Botones en la parte superior
                    Positioned(
                      top: 10,
                      left: 10,
                      right: 10,
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
                              )
                              
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
