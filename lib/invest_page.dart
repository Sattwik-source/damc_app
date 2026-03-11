import 'package:flutter/material.dart';

class InvestPage extends StatelessWidget {
  const InvestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invest"),
        backgroundColor: const Color(0xff0f9b6f),
      ),

      backgroundColor: const Color(0xff0f3d2e),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const SizedBox(height: 30),

            /// LUMPSUM OPTION
            _investOption(
              context,
              Icons.account_balance_wallet,
              "Lumpsum Investment",
              "Invest a one-time amount",
            ),

            const SizedBox(height: 20),

            /// EMI OPTION
            _investOption(
              context,
              Icons.repeat,
              "EMI Investment",
              "Invest monthly (SIP style)",
            ),
          ],
        ),
      ),
    );
  }

  Widget _investOption(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xff1dbf73),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Icon(icon, size: 40, color: Colors.white),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(subtitle, style: const TextStyle(color: Colors.white70)),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
