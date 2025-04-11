import 'package:flutter/material.dart';
import 'package:game_app/core/constants/assets.dart/app_images.dart';
import 'package:game_app/core/constants/colors.dart/app_colors.dart';
import 'package:game_app/view/home_bottom_section.dart.dart';
import 'package:game_app/widgets/homescreen_widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Lussail, Qatar',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.primaryDarkBlue,
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.primaryDarkBlue,
              size: 20,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.lightBlueBg,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Intermediate',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.primaryDarkBlue,
                        ),
                      ),
                      SizedBox(width: 4),
                      Image(image: AssetImage(AppAssets.levelIcon)),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: AppColors.lightOrangeIconBg,
                  radius: 16,
                  child: Image(image: AssetImage(AppAssets.profileIcon)),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: [
                      Image.asset(
                        AppAssets.bannerImage,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
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
                                color: AppColors.primaryDarkBlue,
                              ),
                            ),
                            SizedBox(height: 4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CREATE YOUR',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'GAME',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 10),
                                decoration: BoxDecoration(
                                  color: AppColors.darkNavy,
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
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: AppColors.darkBlue,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomCenterCard(
                          title: 'Arena',
                          location: 'Lusail',
                          distance: '12 km',
                          rating: '5.0 Rating',
                          price: '120.00',
                          color: AppColors.lightOrangeBg,
                          imagePath: AppAssets.arenaImage,
                        ),
                        SizedBox(width: 10),
                        CustomCenterCard(
                          title: 'Oasis padel',
                          location: 'Doha',
                          distance: '1.5 km',
                          rating: '5.0 Rating',
                          price: '90.00',
                          color: AppColors.lightBlueBg,
                          imagePath: AppAssets.oasisImage,
                        ),
                        SizedBox(width: 10),
                        CustomCenterCard(
                          title: 'Rivu',
                          location: 'Lusail',
                          distance: '0 km',
                          rating: '5.0 Rating',
                          price: '120.00',
                          color: AppColors.lightOrangeIconBg,
                          imagePath: AppAssets.rivuImage,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomActionCard(
                        title: 'Book a Venue',
                        imagePath: AppAssets.bookVenueImage,
                      ),
                      CustomActionCard(
                        title: 'Host a Match',
                        imagePath: AppAssets.hostMatchImage,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomActionCard(
                        title: 'Coaches',
                        imagePath: AppAssets.coachesImage,
                      ),
                      CustomActionCard(
                        title: 'Shop Now',
                        imagePath: AppAssets.rivuImage,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            HomeBottomSection(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.darkNavy,
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
          onTap: (index) {},
        ),
      ),
    );
  }
}