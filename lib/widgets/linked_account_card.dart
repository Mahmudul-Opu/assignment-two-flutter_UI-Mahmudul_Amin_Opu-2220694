import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class LinkedAccountCard extends StatelessWidget {
  const LinkedAccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [

          CircleAvatar(
            backgroundColor: AppColors.primary.withValues(alpha: 0.15),

            child: const Text(
              "S",
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 14),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Shared Savings",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  "\$5,500.00",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}