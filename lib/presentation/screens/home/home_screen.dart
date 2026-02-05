import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('@username',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              icon: Icon(Icons.help_outline, color: Colors.black),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildNavBar(),
            _buildWalletCard(),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavBar() {
  final List<String> tabs = ["Wallet", "Savings", "Credit", "Loans", "Cards"];
  String selectedTab = "Wallet";

  return Container(
    height: 48,
    color: Colors.white,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: tabs.map((item) {
          bool isActive = item == selectedTab;

          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: isActive ? Colors.black : Colors.transparent,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 16,
                  color: isActive ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    ),
  );
}

Widget _buildWalletCard() {
  return Container(
    margin: EdgeInsets.all(16),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("P****.**",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                Text("Wallet balance",
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ],
            ),
            Icon(Icons.visibility_off_outlined, color: Colors.grey),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green.withValues(alpha: 0.2),
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text("Cash in",
                    style: TextStyle(color: Colors.green)),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green.withValues(alpha: 0.2),
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text("Cash out",
                    style: TextStyle(color: Colors.green)),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
