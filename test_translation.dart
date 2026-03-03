import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  const url = 'https://soxdzielqtabyradajle.supabase.co/functions/v1/translate-and-validate';
  const anonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNveGR6aWVscXRhYnlyYWRhamxlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjkzNzI0NDQsImV4cCI6MjA4NDk0ODQ0NH0.MHLZSXBWJlN6xojyqJR57DLulUWMUg67V458h6Sq2nY';

  print('Sending translation request...');
  
  final response = await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $anonKey',
    },
    body: json.encode({
      'text': '사과',
      'sourceLang': 'ko',
      'targetLang': 'en'
    }),
  );

  print('Status Code: ${response.statusCode}');
  print('Headers: ${response.headers}');
  print('Body: ${response.body}');
}
