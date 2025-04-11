// widgets.dart
import 'package:flutter/material.dart';
import 'package:game_app/core/constants/colors.dart/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomCenterCard extends StatelessWidget {
  final String title;
  final String location;
  final String distance;
  final String rating;
  final String price;
  final Color color;
  final String imagePath;

  const CustomCenterCard({
    required this.title,
    required this.location,
    required this.distance,
    required this.rating,
    required this.price,
    required this.color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 290,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '$location - $distance',
                    style: GoogleFonts.poppins(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 15, color: Colors.orange),
                        SizedBox(width: 4),
                        Text(
                          rating,
                          style: GoogleFonts.poppins(
                              fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '$price QR/-',
                    style: GoogleFonts.poppins(
                        fontSize: 18, color: AppColors.orange),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomActionCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const CustomActionCard({
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(2, 2),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}