import 'package:http/http.dart' as http;
import 'package:main/type/post.dart';

void main(List<String> arguments) async {
  var url = Uri.https('jsonlaceholder.typicode.com', '/posts');

  try {
    var jsonPost = await http.get(url);
    if (jsonPost.statusCode == 200) {
      final post = postFromJson(jsonPost.body);
      for (var post in posts) {
        print("albumId: ${post.albumId}");
        print("id: ${post.id}");
        print("title: ${post.title}");
        print("======================================");
      }
    } else {
      print("No se pudo conectar con el servidor");
    }
  } catch (e) {
    print(e.toString());
  }
}
