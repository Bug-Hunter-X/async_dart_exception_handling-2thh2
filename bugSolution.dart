```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } on FormatException catch (e) {
        throw Exception('Invalid JSON format: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode} ${response.reasonPhrase}');
    }
  } on http.ClientException catch (e) {
    throw Exception('Network error: $e');
  } catch (e) {
    throw Exception('An unexpected error occurred: $e');
  }
}

void main() async {
  try {
    final data = await fetchData();
    print('Data: $data');
  } catch (e) {
    print('Error: $e');
  }
}
```