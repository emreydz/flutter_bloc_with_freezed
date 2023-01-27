import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_freezed/bloc/game_bloc.dart';
import 'package:flutter_bloc_with_freezed/service/game_service.dart';
import 'package:flutter_bloc_with_freezed/view/home_view.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => GameBloc(ProductService()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc with Freezed',
      theme: ThemeData(),
      home: HomeView(),
    );
  }
}
