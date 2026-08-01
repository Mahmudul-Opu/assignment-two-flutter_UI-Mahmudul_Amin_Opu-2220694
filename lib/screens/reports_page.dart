import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

import '../widgets/app_header.dart';
import '../widgets/expense_bar.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

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
                "Monthly Spending Report",
                style: AppStyles.title,
              ),

              const SizedBox(height: 22),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(
                      "Total Expenses (Last 30 days)",
                      style: AppStyles.small,
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "-\$1270.00",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: const [

                        Icon(
                          Icons.arrow_upward,
                          size: 16,
                          color: Colors.red,
                        ),

                        SizedBox(width: 4),

                        Text(
                          "Up 12% from last month",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              Text(
                "Spending Breakdown",
                style: AppStyles.heading,
              ),

              const SizedBox(height: 18),

              Container(
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),

                child: const Column(
                  children: [

                    ExpenseBar(
                      title: "Food & Drink",
                      progress: .35,
                      color: Colors.red,
                      amount: "\$450.00",
                      percent: "35%",
                    ),

                    ExpenseBar(
                      title: "Shopping",
                      progress: .25,
                      color: Colors.deepPurple,
                      amount: "\$320.00",
                      percent: "25%",
                    ),

                    ExpenseBar(
                      title: "Housing",
                      progress: .22,
                      color: Colors.amber,
                      amount: "\$280.00",
                      percent: "22%",
                    ),

                    ExpenseBar(
                      title: "Transport",
                      progress: .12,
                      color: Colors.green,
                      amount: "\$150.00",
                      percent: "12%",
                    ),

                    ExpenseBar(
                      title: "Other",
                      progress: .06,
                      color: Colors.grey,
                      amount: "\$70.00",
                      percent: "6%",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}