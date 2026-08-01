import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

import '../widgets/app_header.dart';
import '../widgets/action_button.dart';
import '../widgets/linked_account_card.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const AppHeader(
                name: "Mahmudul Amin Opu",
              ),

              const SizedBox(height: 24),

              Text(
                "My Cards",
                style: AppStyles.title,
              ),

              const SizedBox(height: 22),

              Container(
                width: double.infinity,
                height: 210,

                padding: const EdgeInsets.all(22),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),

                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff222B45),
                      Color(0xff101827),
                    ],
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        Container(
                          width: 36,
                          height: 28,

                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.circular(5),
                          ),
                        ),

                        const Text(
                          "BANK",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    const Text(
                      "4567  ****  ****  1234",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 18),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: const [

                            Text(
                              "CARD HOLDER",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              "Mahmudul Amin Opu",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.end,

                          children: const [

                            Text(
                              "EXPIRES",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              "12/28",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

              Row(
                children: [

                  ActionButton(
                    icon: Icons.block,
                    title: "Block",
                  ),

                  ActionButton(
                    icon: Icons.credit_card,
                    title: "Details",
                  ),

                  ActionButton(
                    icon: Icons.info_outline,
                    title: "Limit",
                  ),
                ],
              ),

              const SizedBox(height: 28),

              Text(
                "Linked Accounts",
                style: AppStyles.heading,
              ),

              const SizedBox(height: 18),

              const LinkedAccountCard(),
            ],
          ),
        ),
      ),
    );
  }
}