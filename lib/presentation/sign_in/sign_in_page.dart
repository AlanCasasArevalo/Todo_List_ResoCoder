import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_reso_coder/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:todo_list_reso_coder/injection.dart';
import './widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: BlocProvider(
        create: (BuildContext context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
