import 'package:dio/dio.dart';
import 'package:kt2/kt2.dart' as kt2;

import 'models/CarData.dart';

void main(List<String> arguments) async {
  Dio client =Dio();
  String url = 'https://myfakeapi.com/api/cars';

  var response = await client.get(url);
  CarData data = CarData.fromJson(response.data);

 List<car> carsMassive = data.cars;

double carw = 0;
double pricew = 0;

for (var el in carsMassive) {
  String str = el.price;
  if (el.car_color == "Yellow" ) {
    String pr = el.price.substring(1);
    pricew += double.parse(pr);
    carw ++;
  }
}
  double av = pricew/carw; 
  print(av);
}