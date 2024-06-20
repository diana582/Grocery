import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account Details',
          style: TextStyle(color: Colors.black), // Set text color to black
        ),
        backgroundColor: Color.fromARGB(255, 248, 250, 248),
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.white, // Set icon color to black
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'data:image/png;base64,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', // Replace with user's profile image URL
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Hari', // Replace with user's name
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'hnands@example.com', // Replace with user's email
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '+123 4567 890', // Replace with user's phone number
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '123 street,456 city', // Replace with user's address
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  // Add functionality to edit details
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Details'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('Orders'),
                      onTap: () {
                        // Navigate to orders page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.card_giftcard),
                      title: Text('Coupons'),
                      onTap: () {
                        // Navigate to coupons page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.account_balance_wallet),
                      title: Text('Wallet'),
                      onTap: () {
                        // Navigate to wallet page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      onTap: () {
                        // Navigate to settings page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.help),
                      title: Text('Help & Support'),
                      onTap: () {
                        // Navigate to help and support page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                      onTap: () {
                        // Perform logout
                      },
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
