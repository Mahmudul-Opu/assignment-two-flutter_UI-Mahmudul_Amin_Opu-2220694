import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

import '../widgets/action_button.dart';
import '../widgets/app_header.dart';
import '../widgets/balance_card.dart';
import '../widgets/transaction_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

              const SizedBox(height: 22),

              const BalanceCard(),

              const SizedBox(height: 18),

              Row(
                children: [

                  ActionButton(
                    icon: Icons.send_rounded,
                    title: "Transfer",
                  ),

                  ActionButton(
                    icon: Icons.receipt_long_rounded,
                    title: "Pay Bills",
                  ),

                  ActionButton(
                    icon: Icons.trending_up,
                    title: "Invest",
                  ),
                ],
              ),

              const SizedBox(height: 28),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  Text(
                    "Recent Transactions",
                    style: AppStyles.heading,
                  ),

                  TextButton(
                    onPressed: () {},

                    child: const Text(
                      "View All",
                    ),
                  )
                ],
              ),

              const SizedBox(height: 8),

              const TransactionTile(
                icon: Icons.movie_creation_outlined,
                title: "Netflix Subscription",
                subtitle: "Entertainment • Today",
                amount: "-\$19.99",
                amountColor: Colors.red,
              ),

              const SizedBox(height: 14),

              const TransactionTile(
                icon: Icons.coffee_outlined,
                title: "Coffee Shop",
                subtitle: "Food & Drink • Today",
                amount: "-\$4.50",
                amountColor: Colors.red,
              ),

              const SizedBox(height: 14),

              const TransactionTile(
                icon: Icons.account_balance_wallet_outlined,
                title: "Salary Deposit",
                subtitle: "Income • Yesterday",
                amount: "+\$3500.00",
                amountColor: Colors.green,
              ),

              const SizedBox(height: 14),

              const TransactionTile(
                icon: Icons.shopping_cart_outlined,
                title: "Grocery Store",
                subtitle: "Shopping • Yesterday",
                amount: "-\$55.80",
                amountColor: Colors.red,
              ),

              const SizedBox(height: 14),

              const TransactionTile(
                icon: Icons.shopping_bag_outlined,
                title: "Amazon Purchase",
                subtitle: "Shopping • 2 days ago",
                amount: "-\$120.45",
                amountColor: Colors.red,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}