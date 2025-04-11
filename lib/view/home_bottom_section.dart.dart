import 'package:flutter/material.dart';
import 'package:game_app/core/constants/assets.dart/app_images.dart';
import 'package:game_app/core/constants/colors.dart/app_colors.dart';
import 'package:game_app/widgets/home_bottom_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeBottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader('Upcoming Competition'),
                const SizedBox(height: 16),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.9,
                  ),
                  items: const [
                    CompetitionCard(
                      title: 'Lusail Center',
                      subtitle: '5 April, 7:30 PM | Friendly Match',
                    ),
                    CompetitionCard(
                      title: 'Another Center',
                      subtitle: '6 April, 6:00 PM | Tournament',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                _buildDotsIndicator(2),
              ],
            ),
          ),

          // Expert Coaches Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader('Expert Coaches'),
                const SizedBox(height: 16),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CoachCard(
                        name: 'Mensch Bind',
                        rating: '5.0 rating',
                        category: 'Adult and Kids',
                        imagePath: AppAssets.coach1Image,
                        index: 0,
                      ),
                      SizedBox(width: 10),
                      CoachCard(
                        name: 'Jonvin George',
                        rating: '4.5 rating',
                        category: 'Adult and Kids',
                        imagePath: AppAssets.coach2Image,
                        index: 1,
                      ),
                      SizedBox(width: 10),
                      CoachCard(
                        name: 'Marie',
                        rating: '4.0 rating',
                        category: 'Adult',
                        imagePath: AppAssets.coach3Image,
                        index: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Sports Items Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader('Sports Items'),
                const SizedBox(height: 16),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SportsItemCard(
                        title: 'Level Up your Game',
                        itemName: 'Bowling Ball',
                        imagePath: AppAssets.sportsItem1Image,
                      ),
                      SizedBox(width: 10),
                      SportsItemCard(
                        title: 'games without plant',
                        itemName: 'Bowling Hand Gloves',
                        imagePath: AppAssets.sportsItem2Image,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Upcoming Trainings Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader('Upcoming Trainings'),
                const SizedBox(height: 16),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TrainingCard(
                        academy: 'BBFS Academy',
                        location: 'Doha municipality',
                        price: '10.00 QAR/-',
                        imagePath: AppAssets.training1Image,
                        index: 0,
                      ),
                      SizedBox(width: 10),
                      TrainingCard(
                        academy: 'Jaint Academy',
                        location: 'Lussail',
                        price: '100.00 QAR/-',
                        imagePath: AppAssets.training2Image,
                        index: 1,
                      ),
                      SizedBox(width: 10),
                      TrainingCard(
                        academy: 'Arms Academy',
                        location: 'Doha mur',
                        price: '90.00 QAR',
                        imagePath: AppAssets.training3Image,
                        index: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),

          // Footer Section
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: AppColors.darkBlue,
          ),
        ),
        if (title != 'Upcoming Trainings')
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
    );
  }

  Widget _buildDotsIndicator(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: index == 0 ? 12.0 : 8.0,
          height: 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 0 ? Colors.orange : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'STRIKE',
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'BOWLING GAME COMMUNITY APP',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFooterLink('Privacy Policy'),
              const SizedBox(width: 20),
              _buildFooterLink('Terms of service'),
              const SizedBox(width: 20),
              _buildFooterLink('FAQs'),
            ],
          ),
          const SizedBox(height: 30),
          Image.asset(
            AppAssets.footerManImage,
            height: 150,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 30),
          Text(
            'VERSION 2.0',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: AppColors.footerGray,
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: AppColors.footerOrange,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}