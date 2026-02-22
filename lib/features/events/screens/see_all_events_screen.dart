import 'package:flutter/material.dart';
import 'package:assignment/features/home/screens/search_screen.dart';
import 'package:assignment/features/events/screens/event_details_screen.dart';

class SeeAllEventsScreen extends StatelessWidget {
  const SeeAllEventsScreen({super.key});

  final Color primaryColor = const Color(0xFF5669FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Events',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          _eventListItem(
            context,
            'assets/jazz.png',
            'Wed, Apr 28 • 5:30 PM',
            'Jo malone london\'s\nmother\'s day',
            'Radius Gallery, Santa Cruz, CA',
          ),
          _eventListItem(
            context,
            'assets/Group 33349.png',
            'Sat, May 1 • 2:00 PM',
            'A virtual evening of\nsmooth jazz',
            'Lot 13 • Oakland, CA',
          ),
          _eventListItem(
            context,
            'assets/image 77.png',
            'Sat, Apr 24 • 1:30 PM',
            'Women\'s leadership\nconference 2021',
            '53 Bash St • San Francisco, CA',
          ),
          _eventListItem(
            context,
            'assets/International Kids Safe.png',
            'Fri, Apr 23 • 6:00 PM',
            'International kids safe\nparents night out',
            'Lot 13 • Oakland, CA',
          ),
          _eventListItem(
            context,
            'assets/Group 33318.png',
            'Mon, Jun 21 • 10:00 PM',
            'Collectivity Plays the Music of\nJimi',
            'Longboard Margarita Bar',
          ),
          _eventListItem(
            context,
            'assets/Gala Music Festival.png',
            'Sun, Apr 25 • 10:15 AM',
            'International gala\nmusic festival',
            '36 Guild Street London, UK',
          ),
        ],
      ),
    );
  }

  Widget _eventListItem(
    BuildContext context,
    String imagePath,
    String dateText,
    String title,
    String locText,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsScreen(
              title: title,
              imagePath: imagePath,
              dateText: dateText,
              locationText: locText,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 80,
                  height: 100,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    dateText,
                    style: const TextStyle(
                      color: Color(0xFF5669FF),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          locText,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
