import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';
@freezed
abstract class ApiResult<t> with _$ApiResult<t> {
  
  factory ApiResult.success(t data) = Success<t>;
  // عدل هنا الايرور خليه errorHandler
  factory ApiResult.failure(String error) = Failure<t>;
}
