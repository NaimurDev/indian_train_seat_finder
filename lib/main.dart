import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_seat/bloc/seat_finder_bloc.dart';
import 'package:train_seat/pages/seat_finder/seat_finder_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return SeatFinderBloc();
      },
      child: MaterialApp(
        title: 'Seat Finder',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SeatFinderPage(),
      ),
    );
  }
}
