// The code in this file is adapted from Oleksandr Leuschenko' ARKit Flutter Plugin (https://github.com/olexale/arkit_flutter_plugin)
import 'package:json_annotation/json_annotation.dart';
import 'package:vector_math/vector_math_64.dart';

class MatrixConverter implements JsonConverter<Matrix4, List<dynamic>> {
  const MatrixConverter();

  @override
  Matrix4 fromJson(List<dynamic> json) {
    return Matrix4.fromList(json.cast<double>());
  }

  @override
  List<dynamic> toJson(Matrix4 matrix) {
    final list = List<double>.filled(16, 0.0);
    matrix.copyIntoArray(list);
    return list;
  }
}

class ListConverter implements JsonConverter<List<double>, List<dynamic>> {
  const ListConverter();

  @override
  List<double> fromJson(List<dynamic> json) {
    return json.cast<double>().toList();
  }

  @override
  List<dynamic> toJson(List<double> list) {
    return list;
  }
}
