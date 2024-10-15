import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_basketball_app/Cubits/My_Points_Counter_Increment/my_states.dart';

class MyTeamsPointsCounterIncrementCubit
    extends Cubit<MyTeamsPointsCounterIncrementStates> {
  MyTeamsPointsCounterIncrementCubit() : super(MyInitiaLState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void myTeamsPointsCounterIncrementMethod({
    required String team,
    required int buttonNumber,
  }) {
    if (team == "A") {
      if (buttonNumber != 0) {
        teamAPoints += buttonNumber;
        emit(MyTeamAPointsCounterIncrementState());
      } else {
        teamAPoints = buttonNumber;
      }
    } else {
      if (buttonNumber != 0) {
        teamBPoints += buttonNumber;
        emit(MyTeamBPointsCounterIncrementState());
      } else {
        teamBPoints = buttonNumber;
      }
    }
  }
}
