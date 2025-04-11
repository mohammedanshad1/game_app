import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeBottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Upcoming Competition Section with Carousel
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Competition',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xFF090A4E),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Carousel Slider
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0, // Increased height to match the image
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.9,
                    onPageChanged: (index, reason) {},
                  ),
                  items: [
                    _buildCompetitionCard(
                      'Lusail Center',
                      '5 April, 7:30 PM | Friendly Match',
                      'assets/images/upcoming.png',
                    ),
                    // Add more items as needed
                    _buildCompetitionCard(
                      'Another Center',
                      '6 April, 6:00 PM | Tournament',
                      'assets/images/upcoming.png',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Dots indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      2,
                      (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            width:
                                index == 0 ? 12.0 : 8.0, // Active dot is larger
                            height: 8.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == 0 ? Colors.orange : Colors.grey,
                            ),
                          )),
                ),
              ],
            ),
          ),

          // Expert Coaches Section with Images
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expert Coaches',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xFF090A4E),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // In the Expert Coaches section, update the Row widget to include index:
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCoachCardWithImage(
                        'Mensch Bind',
                        '5.0 rating',
                        'Adult and Kids',
                        'assets/images/maneshbhai.png',
                        0, // Add index parameter
                      ),
                      SizedBox(width: 10),
                      _buildCoachCardWithImage(
                        'Jonvin George',
                        '4.5 rating',
                        'Adult and Kids',
                        'assets/images/jowrin.png',
                        1, // Add index parameter
                      ),
                      SizedBox(width: 10),
                      _buildCoachCardWithImage(
                        'Marie',
                        '4.0 rating',
                        'Adult',
                        'assets/images/Rectangle 2396.png',
                        2, // Add index parameter
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Sports Items Section with Images
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sports Items',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xFF090A4E),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildSportsItemCardWithImage(
                        'Level Up your Game',
                        'Bowling Ball',
                        'assets/images/levelup.png',
                      ),
                      SizedBox(width: 10),
                      _buildSportsItemCardWithImage(
                        'games without plant',
                        'Bowling Hand Gloves',
                        'assets/images/playgame.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          // Add this new section after the Sports Items section in your build method
// Upcoming Trainings Section
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Trainings',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xFF090A4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildTrainingCard('BBFS Academy', 'Doha municipality',
                          '10.00 QAR/-', 'assets/images/bbfacademy.png', 0),
                      SizedBox(width: 10),
                      _buildTrainingCard('Jaint Academy', 'Lussail',
                          '100.00 QAR/-', 'assets/images/jaintacademy.png', 1),
                      SizedBox(width: 10),
                      _buildTrainingCard('Arms Academy', 'Doha mur',
                          '90.00 QAR', 'assets/images/arms.png', 2),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          // Add this footer section at the bottom of your Column widget
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                vertical: 40, horizontal: 16), // Increased vertical padding
            color: Colors.white,
            child: Column(
              children: [
                // STRIKE text in orange - made larger and more prominent
                Text(
                  'STRIKE',
                  style: GoogleFonts.poppins(
                    fontSize: 32, // Increased from 24
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    letterSpacing: 1.5, // Added letter spacing
                  ),
                ),
                SizedBox(height: 8), // Increased spacing

                // Bowling game community text - made slightly larger
                Text(
                  'BOWLING GAME COMMUNITY APP',
                  style: GoogleFonts.poppins(
                    fontSize: 16, // Increased from 14
                    color: Colors.black,
                    fontWeight: FontWeight.w500, // Added medium weight
                    letterSpacing: 0.5,
                  ),
                ),

                SizedBox(height: 30), // Increased spacing

                // Links row - made more prominent
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Privacy Policy',
                        style: GoogleFonts.poppins(
                          fontSize: 14, // Increased from 12
                          color: Color(0xFFF2560B),
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Increased spacing
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Terms of service',
                        style: GoogleFonts.poppins(
                          fontSize: 14, // Increased from 12
                          color: Color(0xFFF2560B),
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Increased spacing
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'FAQs',
                        style: GoogleFonts.poppins(
                          fontSize: 14, // Increased from 12
                          color: Color(0xFFF2560B),
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30), // Increased spacing

                // Image of the man - made larger
                Image.asset(
                  'assets/images/man.png',
                  height: 150, // Increased from 100
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 30), // Increased spacing

                // Version text - made slightly larger
                Text(
                  'VERSION 2.0',
                  style: GoogleFonts.poppins(
                    fontSize: 14, // Increased from 12
                    color: Color(0xFFACACAC),
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompetitionCard(
      String title, String subtitle, String imagePath) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Background Image
            Container(
              height: 200, // Fixed height for the image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Gradient overlay at bottom for better text visibility
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            // Text at bottom left
            Positioned(
              left: 16,
              bottom: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
            // JOIN NOW button at top right
            Positioned(
              right: 16,
              top: 16,
              child: InkWell(
                onTap: () {
                  // Add join action here
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.orange, // Dark blue color
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    'JOIN NOW',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoachCardWithImage(String name, String rating, String category,
      String imagePath, int index) {
    // Define card colors in order
    final List<Color> cardColors = [
      Color(0xFFFFF3ED), // #FFF3ED
      Color(0xFFE8F2FF), // #E8F2FF
      Color(0xFFFFF3ED), // #FFF3ED
    ];

    return Container(
      width: 150,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: cardColors[index % cardColors.length], // Cycle through colors
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          // Rectangular image instead of circle
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 12),
          // Name aligned left
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500, // Added for consistency
              ),
            ),
          ),
          SizedBox(height: 4),
          // Rating without star icon
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              rating,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 12), // Extra space after rating as in image
          // Category aligned left
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              category,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSportsItemCardWithImage(
      String title, String itemName, String imagePath) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 12),
          // Title (bold and left-aligned)
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500, // Added for consistency
            ),
          ),
          SizedBox(height: 4),
          // Item Name (regular and left-aligned)
          Text(
            itemName,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 12),
          // Orange "Read More" button
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Read More',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingCard(String academy, String location, String price,
      String imagePath, int index) {
    final List<Color> cardColors = [
      Color(0xFFFFF3ED), // #FFF3ED
      Color(0xFFE8F2FF), // #E8F2FF
      Color(0xFFFFF3ED), // #FFF3ED
    ];

    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: cardColors[index % cardColors.length],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Added for alignment
        children: [
          // Image section
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Content section
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Academy Name
                ConstrainedBox(
                  constraints:
                      BoxConstraints(maxHeight: 40), // Fixed max height
                  child: Text(
                    academy,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500, // Added for consistency
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 4),
                // Location
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 36),
                  child: Text(
                    location,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 20),
                // Price
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
