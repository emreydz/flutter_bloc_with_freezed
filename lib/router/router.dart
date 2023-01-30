import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_freezed/model/data_model.dart';
import 'package:flutter_bloc_with_freezed/view/detail_view.dart';
import 'package:flutter_bloc_with_freezed/view/home_view.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetailsPage, path: "detail")
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
