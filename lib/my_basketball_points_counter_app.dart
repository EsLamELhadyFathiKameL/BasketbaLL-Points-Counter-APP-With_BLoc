import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_basketball_app/Cubits/My_Points_Counter_Increment/my_cubit.dart';
import 'package:my_basketball_app/Screens/my_home_page.dart';

void main() {
  runApp(const MyBasketbaLLPointsCounterAPP());
}

class MyBasketbaLLPointsCounterAPP extends StatelessWidget {
  const MyBasketbaLLPointsCounterAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyTeamsPointsCounterIncrementCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
