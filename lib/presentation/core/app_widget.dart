import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_reso_coder/application/auth/auth/auth_bloc.dart';
import 'package:todo_list_reso_coder/injection.dart';
import 'package:todo_list_reso_coder/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequest()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes',
        builder: ExtendedNavigator(
          router: RouterApp(),
        ),
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.green[800],
            accentColor: Colors.blueAccent,
            inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)))),
      ),
    );
  }
}
