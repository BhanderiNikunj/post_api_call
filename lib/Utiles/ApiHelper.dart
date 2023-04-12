import 'package:http/http.dart' as http;

class ApiHelper {
  Future<String> ApiCall(String name, String job) async {
    String Link = "https://reqres.in/api/users";

    Uri uri = Uri.parse(Link);

    var Result = await http.post(
      uri,
      body: {
        "name": name,
        "job": job,
      },
    );

    if(Result.statusCode == 201){
      return "Success";
    }
    else{
      return "Failed";
    }
  }
}
