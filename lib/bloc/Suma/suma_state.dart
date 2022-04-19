part of 'suma_bloc.dart';

class SumaState {
  final String num1;
  final String num2;
  final String result;

  SumaState({this.num1 = '0', this.num2 = '0', this.result = '0'});

  SumaState copyWith({String? num1, String? num2, String? result}) {
    return SumaState(
      num1: num1 ?? this.num1,
      num2: num2 ?? this.num2,
      result: result ?? this.result,
    );
  }
}
