import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // title: Text(
        //   'St Home',
        //   style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        // ),
        title: Text(
          'Lusail, Qatar',
          style: GoogleFonts.poppins(fontSize: 16),
        ),
        // Upward arrow icon (opposite of location icon)
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // To position elements at corners
              children: [
                // Right corner: Intermediate container and notification avatar
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F2FF), // Hex #E8F2FF
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Intermediate',
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: Colors.blue),
                          ),
                          SizedBox(width: 4),
                          Image(
                              image: AssetImage(
                                  "assets/images/image 880.png")), // Ensure this asset exists
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    // Notification icon in circular avatar
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFF1EB), // Hex #FFF1EB
                      radius: 16,
                      child: Image(
                          image: AssetImage(
                              "assets/images/image 881.png")), // Ensure this asset exists
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            // Banner Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200, // Fixed height for the container
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      16), // Rounded corners for container
                  color: Colors.grey[300], // Fallback color
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      16), // Match container's border radius
                  child: Stack(
                    children: [
                      // Background image that fills the container
                      Image.asset(
                        'assets/images/image.png', // Your bowling image
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity, // Fill the container
                      ),
                      // Gradient overlay for better text visibility
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.3),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Keep yourself fit with us',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0xFF0F386D), // Hex color #0F386D
                                // Changed to white for better visibility
                              ),
                            ),
                            SizedBox(height: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CREATE YOUR',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24, // Increased font size
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'GAME',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24, // Increased font size
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            // "JOIN NOW" button
                            InkWell(
                              onTap: () {
                                // Add your join now functionality
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFF141252),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'JOIN NOW',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Featured Centers Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Featured Centers',
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),
                      Text(
                        'View All',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal, // Enable horizontal scrolling
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Changed to start for scrollable layout
                      children: [
                        _buildCenterCard(
                          context,
                          'Arena',
                          'Lusail',
                          '12 km',
                          '5.0 Rating',
                          '120.00',
                          Color(0xFFFFF3ED), // Hex #FFF3ED
                          'assets/images/image (1).png', // Replace with your image asset
                        ),
                        SizedBox(width: 10), // Space between cards
                        _buildCenterCard(
                          context,
                          'Oasis padel',
                          'Doha',
                          '1.5 km',
                          '5.0 Rating',
                          '90.00',
                          Color(0xFFE8F2FF), // Hex #E8F2FF
                          'assets/images/image (2).png', // Replace with your image asset
                        ),
                        SizedBox(width: 10), // Space between cards
                        _buildCenterCard(
                          context,
                          'Rivu',
                          'Lusail',
                          '0 km',
                          '5.0 Rating',
                          '120.00',
                          Color(0xFFFFF1EB), // Hex #FFF1EB
                          'assets/images/image (3).png', // Replace with your image asset
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildActionCard(context, 'Book a Venue',
                          'assets/images/image (6).png'),
                      _buildActionCard(context, 'Host a Match',
                          'assets/images/image (4).png'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildActionCard(
                          context, 'Coaches', 'assets/images/image (5).png'),
                      _buildActionCard(
                          context, 'Shop Now', 'assets/images/image (3).png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF141252), // Background color #141252
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow, color: Colors.white),
              label: 'Play',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city, color: Colors.white),
              label: 'Venue',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.7),
          selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 12,
          ),
          onTap: (index) {
            // Handle navigation
          },
        ),
      ),
    );
  }

  Widget _buildCenterCard(
      BuildContext context,
      String title,
      String location,
      String distance,
      String rating,
      String price,
      Color color,
      String imagePath) {
    return Container(
      width: MediaQuery.of(context).size.width *
          0.45, // Width ~45% to match screenshot
      height: 290, // Height ~290 pixels to match your design
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
            16), // Slightly larger radius for rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Adds a subtle shadow
          ),
        ],
      ),
      child: Column(
        children: [
          // Image at the top
          Container(
            height: 120, // Increased image height to fit the taller card
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(imagePath), // Use the provided image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text details below the image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 4), // Decreased width, increased height
                    decoration: BoxDecoration(
                      color: Colors.white, // White background
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color:
                              Colors.grey[300]!), // Light border for visibility
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
                    '$price QR/-', // Append "QR/-" to price
                    style: GoogleFonts.poppins(
                        fontSize: 18, color: Color(0xFFC9511D)), // Hex #C9511D
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

  Widget _buildActionCard(
      BuildContext context, String title, String imagePath) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath), // Replace with your image asset
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
