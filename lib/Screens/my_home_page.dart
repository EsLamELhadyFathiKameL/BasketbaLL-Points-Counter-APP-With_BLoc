import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_basketball_app/Cubits/My_Points_Counter_Increment/my_cubit.dart';
import 'package:my_basketball_app/Cubits/My_Points_Counter_Increment/my_states.dart';
import 'package:my_basketball_app/Widgets/my_elevated_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyTeamsPointsCounterIncrementCubit,
        MyTeamsPointsCounterIncrementStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              "Points Counter",
              style: TextStyle(
                fontSize: 15,
                fontFamily: "Pacifico",
                color: Colors.white,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Pacifico",
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(context).teamAPoints}",
                        style: const TextStyle(
                          fontSize: 85,
                          fontFamily: "Pacifico",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MyELevatedButton(
                        onPressed: () {
                          BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(
                                  context)
                              .myTeamsPointsCounterIncrementMethod(
                            team: "A",
                            buttonNumber: 1,
                          );
                        },
                        buttonText: "Add 1 Points",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MyELevatedButton(
                        onPressed: () {
                          BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(
                                  context)
                              .myTeamsPointsCounterIncrementMethod(
                            team: "A",
                            buttonNumber: 2,
                          );
                        },
                        buttonText: "Add 2 Points",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MyELevatedButton(
                        onPressed: () {
                          BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(
                                  context)
                              .myTeamsPointsCounterIncrementMethod(
                            team: "A",
                            buttonNumber: 3,
                          );
                        },
                        buttonText: "Add 3 Points",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 365,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Pacifico",
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(context).teamBPoints}",
                        style: const TextStyle(
                          fontSize: 85,
                          fontFamily: "Pacifico",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MyELevatedButton(
                        onPressed: () {
                          BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(
                                  context)
                              .myTeamsPointsCounterIncrementMethod(
                            team: "B",
                            buttonNumber: 1,
                          );
                        },
                        buttonText: "Add 1 Points",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MyELevatedButton(
                        onPressed: () {
                          BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(
                                  context)
                              .myTeamsPointsCounterIncrementMethod(
                            team: "B",
                            buttonNumber: 2,
                          );
                        },
                        buttonText: "Add 2 Points",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MyELevatedButton(
                        onPressed: () {
                          BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(
                                  context)
                              .myTeamsPointsCounterIncrementMethod(
                            team: "B",
                            buttonNumber: 3,
                          );
                        },
                        buttonText: "Add 3 Points",
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              MyELevatedButton(
                onPressed: () {
                  BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(context)
                      .myTeamsPointsCounterIncrementMethod(
                    team: "B",
                    buttonNumber: 0,
                  );
                  BlocProvider.of<MyTeamsPointsCounterIncrementCubit>(context)
                      .myTeamsPointsCounterIncrementMethod(
                    team: "A",
                    buttonNumber: 0,
                  );
                  setState(() {});
                },
                buttonText: "Reset",
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
