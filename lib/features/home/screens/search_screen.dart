import 'package:flutter/material.dart';
import 'package:assignment/features/events/screens/filter_screen.dart';
import 'package:assignment/features/events/screens/event_details_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
          'Search',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const Icon(Icons.search, color: Color(0xFF5669FF)),
                const SizedBox(width: 8),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '| Search...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FilterScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.filter_list, color: primaryColor, size: 20),
                        const SizedBox(width: 4),
                        Text(
                          'Filters',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                _eventListItem(
                  context,
                  'assets/Group 33638.png',
                  '1ST MAY- SAT-2:00 PM',
                  'A virtual evening of\nsmooth jazz',
                  true,
                ),
                _eventListItem(
                  context,
                  'assets/Group 18340.png',
                  '1ST MAY- SAT-2:00 PM',
                  'Jo malone london\'s\nmother\'s day',
                  true,
                ),
                _eventListItem(
                  context,
                  'assets/image 77.png',
                  '1ST MAY- SAT-2:00 PM',
                  'Women\'s leadership\nconference',
                  true,
                ),
                _eventListItem(
                  context,
                  'assets/International Kids Safe.png',
                  '1ST MAY- SAT-2:00 PM',
                  'International kids safe\nparents night out',
                  true,
                ),
                _eventListItem(
                  context,
                  'assets/Gala Music Festival.png',
                  '1ST MAY- SAT-2:00 PM',
                  'International gala\nmusic festival',
                  true,
                ),
              ],
            ),
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
    bool showImage,
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
              locationText:
                  'Location', 
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
