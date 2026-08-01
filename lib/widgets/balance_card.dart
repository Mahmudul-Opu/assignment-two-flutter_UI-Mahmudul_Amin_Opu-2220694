import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff635BFF),
            Color(0xff4E4CF5),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Total Balance",
                style: AppStyles.whiteBody,
              ),
              const Spacer(),
              const Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white,
                size: 22,
              ),
            ],
          ),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "\$8,945",
                  style: AppStyles.whiteTitle,
                ),
                const TextSpan(
                  text: ".32",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Divider(
            color: Colors.white.withValues(alpha: 0.25),
            height: 1,
          ),

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Savings",
                      style: AppStyles.whiteBody,
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "\$5,500",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Last 30 days",
                      style: AppStyles.whiteBody,
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "+\$300",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}