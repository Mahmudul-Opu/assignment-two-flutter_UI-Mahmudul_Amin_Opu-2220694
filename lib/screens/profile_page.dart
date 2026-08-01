import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

import '../widgets/app_header.dart';
import '../widgets/info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [

              const AppHeader(
                name: "Mahmudul Amin Opu",
              ),

              const SizedBox(height: 26),

              Text(
                "User Profile",
                style: AppStyles.title,
              ),

              const SizedBox(height: 24),

              Container(
                width: 110,
                height: 110,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,

                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),

                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),

                child: const Center(
                  child: Text(
                    "MO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              const InfoCard(
                title: "Name",
                value: "Mahmudul Amin Opu",
              ),

              const InfoCard(
                title: "Student ID",
                value: "2220694",
              ),

              const InfoCard(
                title: "Email",
                value: "2220694@iub.edu.bd",
              ),

              const InfoCard(
                title: "Bio / Story",
                value:
                    "I'm currently focusing on my final year and improving my skills. I enjoy learning new technologies and building small projects. In my free time, I like reading books and watching movies. My goal is to become a successful software developer.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}