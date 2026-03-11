import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f3d2e),

      appBar: AppBar(
        backgroundColor: const Color(0xff0f9b6f),
        elevation: 0,
        title: const Text("DAMC Dashboard"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            /// PORTFOLIO CARD
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff0f9b6f), Color(0xff1dbf73)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Total Portfolio Value",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "₹1,25,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "+ ₹5,200 (4.3%)",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            /// ACTION BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _dashboardButton(Icons.trending_up, "Invest"),

                _dashboardButton(Icons.account_balance_wallet, "Withdraw"),

                _dashboardButton(Icons.history, "History"),

                _dashboardButton(Icons.person, "Profile"),
              ],
            ),

            const SizedBox(height: 30),

            /// RECENT TRANSACTIONS
            const Text(
              "Recent Transactions",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.arrow_downward, color: Colors.green),
                    title: Text(
                      "Investment Added",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "12 March 2026",
                      style: TextStyle(color: Colors.white70),
                    ),
                    trailing: Text(
                      "+ ₹10,000",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.arrow_upward, color: Colors.red),
                    title: Text(
                      "Withdrawal",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "10 March 2026",
                      style: TextStyle(color: Colors.white70),
                    ),
                    trailing: Text(
                      "- ₹5,000",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      /// BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff0f9b6f),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: "Investments",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  /// DASHBOARD BUTTON WIDGET
  Widget _dashboardButton(IconData icon, String text) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),

          decoration: BoxDecoration(
            color: const Color(0xff1dbf73),
            borderRadius: BorderRadius.circular(15),
          ),

          child: Icon(icon, color: Colors.white),
        ),

        const SizedBox(height: 5),

        Text(text, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
