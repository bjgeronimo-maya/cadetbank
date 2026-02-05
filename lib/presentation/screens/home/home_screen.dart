import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonGreen = const Color(0xFF00A86B);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top row: Username + icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        '@username',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 16, color: Colors.green),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline),
                      ),
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications_none),
                          ),
                          Positioned(
                            right: 6,
                            top: 6,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: buttonGreen,
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '8',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Tabs: Wallet, Savings, Credit, Loans, Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _tabItem('Wallet', selected: true),
                  _tabItem('Savings'),
                  _tabItem('Credit'),
                  _tabItem('Loans'),
                  _tabItem('Cards'),
                ],
              ),

              const SizedBox(height: 16),

              // Wallet card
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('₱6,767.67',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold)),
                          Icon(Icons.remove_red_eye_outlined)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Text('Wallet balance',
                              style: TextStyle(color: Colors.grey)),
                          const SizedBox(width: 8),
                          Text('Auto cash in',
                              style: TextStyle(color: buttonGreen)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.call_received),
                              label: const Text('Cash In'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                buttonGreen.withOpacity(0.2),
                                foregroundColor: buttonGreen,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_outward),
                              label: const Text('Send'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                buttonGreen.withOpacity(0.2),
                                foregroundColor: buttonGreen,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Quick action icons
              Center(
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  alignment: WrapAlignment.center,
                  children: [
                    _actionIcon(Icons.account_balance, 'Bank transfer'),
                    _actionIcon(Icons.local_offer_outlined, 'Raffle Promo'),
                    _actionIcon(Icons.currency_bitcoin, 'Crypto'),
                    _actionIcon(Icons.handshake, 'Refer & Earn'),
                    _actionIcon(Icons.phone_android, 'Load'),
                    _actionIcon(Icons.receipt, 'Bills'),
                    _actionIcon(Icons.flag, 'PBB', badge: 'VOTE'),
                    _actionIcon(Icons.more_horiz, 'More'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tabItem(String text, {bool selected = false}) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        color: selected ? Colors.black : Colors.grey,
      ),
    );
  }

  Widget _actionIcon(IconData icon, String label, {String? badge}) {
    return SizedBox(
      width: 72,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(icon, size: 28),
              ),
              if (badge != null)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      badge,
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}