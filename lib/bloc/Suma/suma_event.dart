part of 'suma_bloc.dart';

@immutable
abstract class SumaEvent {}

class ResetEvent extends SumaEvent {}

class AddNumber1 extends SumaEvent {
  final String number;
  AddNumber1(this.number);
}

class AddNumber2 extends SumaEvent {
  final String number2;
  AddNumber2(this.number2);
}

class ResultNumber extends SumaEvent {}
