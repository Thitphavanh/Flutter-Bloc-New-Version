import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_new_version/src/bloc/app_bloc_observer.dart';
import 'package:flutter_bloc_new_version/src/bloc/counter_a_bloc/counter_a_bloc.dart';
import 'src/pages/home_page.dart';

void main() {
  // runApp(const MyApp());
  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
    },
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterABloc =
        BlocProvider<CounterABloc>(create: (context) => CounterABloc());
    // final counterBBloc =
    //     BlocProvider<CounterBBloc>(create: (context) => CounterBBloc());
    return MultiBlocProvider(
      providers: [counterABloc],
      child: MaterialApp(
        title: 'Counter Bloc',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}
