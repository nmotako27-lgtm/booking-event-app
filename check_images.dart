import 'dart:io';

void main() async {
  final dir = Directory('c:/Users/org/Desktop/doctor/assignment/assets');
  final files = dir.listSync().whereType<File>().toList();
  for (var file in files) {
    if (file.path.endsWith('.png')) {
      print('File: ${file.path.split('/').last}');
    }
  }
}
