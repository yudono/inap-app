import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  SwiperController _controller;

  List<String> _lists = [
    'assets/image/footage.jfif',
    'assets/image/hotel.jpeg',
    'assets/image/room.jpg'
  ];

  @override
  void initState() {
    super.initState();
    _controller = new SwiperController();
    _controller.index = 0;
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height / 2;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: _height,
                    child: Swiper(
                      controller: _controller,
                      itemBuilder: (context, index) {
                        return new Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_lists[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: _lists.length,
                      onIndexChanged: (index) {
                        _controller.index = index;
                        setState(() {});
                      },
                    ),
                  ),
                  Positioned(
                    top: 32,
                    left: 32,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 243, 243, 0.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.chevron_left,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: Offset(0, -24),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(54),
                      topRight: Radius.circular(54),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _controller.move(0);
                              setState(() {});
                            },
                            child: Container(
                              width: _controller.index == 0 ? 28 : 16,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _controller.index == 0
                                    ? Color.fromRGBO(255, 196, 12, 1)
                                    : Color.fromRGBO(0, 0, 0, 0.09),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              _controller.move(1);
                              setState(() {});
                            },
                            child: Container(
                              width: _controller.index == 1 ? 28 : 16,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _controller.index == 1
                                    ? Color.fromRGBO(255, 196, 12, 1)
                                    : Color.fromRGBO(0, 0, 0, 0.09),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              _controller.move(2);
                              setState(() {});
                            },
                            child: Container(
                              width: _controller.index == 2 ? 28 : 16,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _controller.index == 2
                                    ? Color.fromRGBO(255, 196, 12, 1)
                                    : Color.fromRGBO(0, 0, 0, 0.09),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.place_outlined,
                                  size: 16,
                                  color: Color(0xffC1C1BA),
                                ),
                                Text(
                                  'Los Angles, USA',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffC1C1BA),
                                    ),
                                  ),
                                ),
                              ]),
                              SizedBox(height: 8),
                              Text(
                                'Louis Home Stay',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff7E7E7E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            CupertinoIcons.heart_circle_fill,
                            size: 48,
                            color: Color.fromRGBO(189, 189, 189, 0.32),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'A house with a minimalist and modern \nScandinavian design style.',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7E7E7E),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(children: [
                        Expanded(
                          child: Column(children: [
                            Row(children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFC40C),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Icon(
                                  CupertinoIcons.arrow_up_left_arrow_down_right,
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Size House',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7E7E7E),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '7x10m',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff7E7E7E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                            SizedBox(height: 12),
                            Row(children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFC40C),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Icon(
                                  CupertinoIcons.star,
                                  size: 16,
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rate',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7E7E7E),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '4.5/5',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff7E7E7E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ]),
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 32,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                ),
                                borderRadius: BorderRadius.circular(26),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFC40C),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.money_dollar,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Price',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff7E7E7E),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '\$ 89.00',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff7E7E7E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ]),
                      SizedBox(height: 32),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff8D6E0F),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Book Now',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
