import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_layout/bloc/Suma/suma_bloc.dart';

class FormSuma extends StatelessWidget {
  const FormSuma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sumaBloc = BlocProvider.of<SumaBloc>(context);
    final formSaveKey = GlobalKey<FormState>();
    final resultController = TextEditingController();

    return BlocBuilder<SumaBloc, SumaState>(
      builder: (context, state) {
        return Form(
          key: formSaveKey,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Numero 1:',
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter a number';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          sumaBloc.add(AddNumber1(value!));
                        }),
                    TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Numero 2:',
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter a number';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          sumaBloc.add(AddNumber2(value!));
                        }),
                    // Text(
                    //   'Num1: ${state.num1}',
                    // ),
                    // Text(
                    //   'Num2: ${state.num2}',
                    // ),
                    Padding(padding: const EdgeInsets.all(8.0)),
                    Text(
                      'Resultado: ${state.result}',
                    ),
                    Padding(padding: const EdgeInsets.all(8.0)),
                    ElevatedButton(
                        onPressed: () {
                          if (formSaveKey.currentState!.validate()) {
                            formSaveKey.currentState!.save();
                            sumaBloc.add(ResultNumber());

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Processing Data'),
                              ),
                            );
                            // Validate returns true if the form is valid
                          }
                        },
                        child: Text('Enviar')),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
