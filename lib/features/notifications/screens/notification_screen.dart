import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final bool isEmpty;

  const NotificationScreen({super.key, this.isEmpty = false});

  final Color primaryColor = const Color(0xFF5669FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: isEmpty ? _buildEmptyState() : _buildNotificationList(),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications_none,
            size: 150,
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 20),
          const Text(
            'No Notifications!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationList() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        _notificationItem(
          name: 'David Silbia',
          action: 'Invite Jo Malone London\'s Mother\'s',
          time: 'Just now',
          showButtons: true,
        ),
        const Divider(height: 30),
        _notificationItem(
          name: 'Adnan Safi',
          action: 'Started following you',
          time: '5 min ago',
        ),
        const Divider(height: 30),
        _notificationItem(
          name: 'Joan Baker',
          action: 'Invite A virtual Evening of Smooth Jazz',
          time: '20 min ago',
          showButtons: true,
        ),
        const Divider(height: 30),
        _notificationItem(
          name: 'Ronald C. Kinch',
          action: 'Like you events',
          time: '1 hr ago',
        ),
        const Divider(height: 30),
        _notificationItem(
          name: 'Clara Tolson',
          action: 'Join your Event Gala Music Festival',
          time: '9 hr ago',
        ),
        const Divider(height: 30),
        _notificationItem(
          name: 'Jennifer Fritz',
          action: 'Invite you International Kids Safe',
          time: 'Tue, 5:10 pm',
          showButtons: true,
        ),
        const Divider(height: 30),
        _notificationItem(
          name: 'Eric G. Prickett',
          action: 'Started following you',
          time: 'Wed, 3:30 pm',
        ),
      ],
    );
  }

  Widget _notificationItem({
    required String name,
    required String action,
    required String time,
    bool showButtons = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage('assets/Image.png'),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: '$name ',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        children: [
                          TextSpan(
                            text: action,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    time,
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
              if (showButtons) const SizedBox(height: 12),
              if (showButtons)
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: const BorderSide(color: Colors.grey),
                        ),
                        child: const Text(
                          'Reject',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Accept',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
