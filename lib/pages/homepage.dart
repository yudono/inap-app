import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:ui';
import '../components/bottomnav.dart';
import '../components/categories.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/icon/bars.png"),
                    size: 32,
                    color: Color(0xFFC4C4C4),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(180, 190, 195, 0.2),
                        hintText: 'Home Stay',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 18),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/image/avatar.jfif',
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: ClipOval(
                            child: Container(
                              width: 12,
                              height: 12,
                              color: Color(0xFFFFC40C),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
                bottom: 24,
              ),
              child: Align(
                child: Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFF7E7E7E),
                    ),
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24, left: 32, right: 32),
              child: Categories(),
            ),
            Expanded(
              child: new Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: new CustomLayoutOption(
                          startIndex: -1, stateCount: 3)
                      .addRotate([-20.0 / 180, 0.0, 20.0 / 180]).addTranslate([
                    Offset(-330.0, 0),
                    Offset(0.0, 0.0),
                    Offset(330.0, 0)
                  ]).addScale(
                    [0.9, 1, 0.9],
                    Alignment.center,
                  ),
                  itemWidth: double.infinity,
                  itemHeight: double.infinity,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            image: DecorationImage(
                              image: AssetImage('assets/image/footage.jfif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 10.0, sigmaY: 10.0),
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(24.0),
                                    decoration: BoxDecoration(
                                      gradient: new LinearGradient(
                                        colors: [
                                          Color.fromRGBO(196, 196, 196, 0.58),
                                          Color.fromRGBO(196, 196, 196, 0),
                                        ],
                                      ),
                                    ),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Louis Home Stay',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 8),
                                                Text(
                                                  'Minimalist and\nmodern design',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 4),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFC40C),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Text(
                                              '\$',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            ' 89.00',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFFFC40C),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 10),
            ),
            BottomNav(),
          ],
        ),
      ),
    );
  }
}
