import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        // title: Text(
        //   'St Home',
        //   style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Lusail, Qatar',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                SizedBox(width: 8),
                Icon(Icons.location_on, size: 16),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
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
                Icon(Icons.notifications, size: 20),
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
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.grey[300],
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/image.png', // Replace with your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Keep yourself fit with us',
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'CREATE YOUR GAME',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'JOIN NOW',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
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
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View All',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.blue),
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
                          '120.00 QR/-',
                          Colors.orange[100]!,
                          'assets/images/image (1).png', // Replace with your image asset
                        ),
                        SizedBox(width: 10), // Space between cards
                        _buildCenterCard(
                          context,
                          'Oasis padel',
                          'Doha',
                          '1.5 km',
                          '5.0 Rating',
                          '90.00 QR/-',
                          Colors.blue[100]!,
                          'assets/images/image (2).png', // Replace with your image asset
                        ),
                        SizedBox(width: 10), // Space between cards
                        _buildCenterCard(
                          context,
                          'Rivu',
                          'Lusail',
                          '0 km',
                          '5.0 Rating',
                          '120.00 QR/-',
                          Colors.green[100]!,
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Play'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_city), label: 'Venue'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {},
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
          0.45, // Width ~31% to match screenshot
      height: 220, // Height ~220 pixels to match screenshot
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
            height: 80, // Increased image height to fit the taller card
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '$location - $distance',
                    style: GoogleFonts.poppins(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, size: 14, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          rating,
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    price,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
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
