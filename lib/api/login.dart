// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class LoginApi {
  Future<http.Response> fetchData() async {
    final response = await http.get(
      Uri.parse('http://localhost:3000/api/data'),
    );

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(response.body);
    } else {
      // ignore: avoid_print
      print('Gagal mengambil data');
    }
    return response;
  }
}
