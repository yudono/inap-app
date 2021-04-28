import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> _category = ["Modern", "Classic", "Traditional", "Retro"];
  String _selected = "Modern";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _category.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  color: _selected == _category[index]
                      ? Color(0xFF8D6E0F)
                      : Color(0xFFE6E9EB),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  _category[index],
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: _selected == _category[index]
                          ? Colors.white
                          : Color(0xFF7E7E7E),
                    ),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  _selected = _category[index];
                });
              },
            ),
          );
        },
      ),
    );
  }
}
