import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'suma_event.dart';
part 'suma_state.dart';

class SumaBloc extends Bloc<SumaEvent, SumaState> {
  SumaBloc() : super(SumaState()) {
    on<AddNumber1>(_addNumber1);
    on<AddNumber2>(_addNumber2);
    on<ResetEvent>(_reset);
    on<ResultNumber>(_resultNumber);
  }

  void _addNumber1(AddNumber1 event, Emitter<SumaState> emit) {
    // add(event);
    print('_addNumber1');
    print(event.number);
    emit(state.copyWith(num1: event.number));
  }

  void _addNumber2(AddNumber2 event, Emitter<SumaState> emit) {
    // add(event);
    print('_addNumber2');
    print(event.number2);
    emit(state.copyWith(num2: event.number2));
  }

  void _reset(ResetEvent event, Emitter<SumaState> emit) {
    print('_reset');
    emit(SumaState(num1: '0', num2: '0', result: '0'));
  }

  void _resultNumber(ResultNumber event, Emitter<SumaState> emit) {
    print('_resultNumber');
    var n1 = double.parse(state.num1);
    var n2 = double.parse(state.num2);
    var result = n1 + n2;
    print(result);
    emit(state.copyWith(result: result.toString()));
  }
}
