import 'package:freezed_annotation/freezed_annotation.dart';

import 'car.dart';

part 'CarData.freezed.dart';
part 'CarData.g.dart';

@freezed
class CarData with _$CarData {

  factory CarData({
    required List<Car> cars,
  }) = _CarData;

  factory CarData.fromJson(Map<String, dynamic> json) => _$CarDataFromJson(json);
}