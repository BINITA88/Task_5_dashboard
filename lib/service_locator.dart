import 'package:bloc_test/bloc/area_of_circle_bloc.dart';
import 'package:bloc_test/bloc/dashboard_bloc.dart';
import 'package:bloc_test/bloc/simple_interest_bloc.dart';
import 'package:bloc_test/bloc/student_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> InitDependencies() async {
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => AreaOfCircleBloc());
  serviceLocator.registerLazySingleton(() => StudentBloc());
  serviceLocator.registerLazySingleton(() => SimpleInterestBloc());
  // serviceLocator.registerLazySingleton(() => CounterBloc());
  serviceLocator.registerLazySingleton<DashboardBloc>(() => DashboardBloc(
        serviceLocator(),
        serviceLocator(),
        serviceLocator(),
      ));
}




// create 3 ui and link in dashboard for todays clas named “arithmetic _bloc_view, student boc view and counter bloc view”