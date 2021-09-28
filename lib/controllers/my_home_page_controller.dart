import 'package:get/get.dart';
import 'package:mvc/models/number_trivia_model.dart';

class MyHomePageController extends GetxController {
  final url = 'http://numbersapi.com/2021/year?json';
  NumberTrivia? result;

  getData() async {
    final client = GetConnect();
    final response = await client.get(url);
    result = NumberTrivia.fromJson(response.body);
    update();
  }

  @override
  void onInit() async {
    super.onInit();
    await getData();
  }
}
