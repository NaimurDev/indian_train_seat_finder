import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_seat/bloc/seat_finder_bloc.dart';
import 'package:train_seat/constants/colors.dart';
import 'package:train_seat/constants/sizes.dart';

class SingleSeatBox extends StatelessWidget {
  final int seatNo;
  final String seatType;
  final bool typeTextOnTop;
  const SingleSeatBox(
      {super.key,
      required this.seatNo,
      required this.seatType,
      required this.typeTextOnTop});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeatFinderBloc, SeatFinderState>(
        builder: (context, state) {
      final bool highlighted =
          state is SeatFinderSeatSelected && seatNo == state.seatNo;

      return Container(
        width: seatWidth,
        height: seatHeight,
        color: highlighted ? seatTextColor : seatAvailableColor,
        child: Column(
          children: [
            if (typeTextOnTop)
              Text(
                seatType,
                style: TextStyle(
                    color: highlighted ? Colors.white : seatTextColor,
                    fontSize: 9.0),
              ),
            Text(
              "$seatNo",
              style: TextStyle(
                color: highlighted ? Colors.white : seatTextColor,
                fontSize: 25,
              ),
            ),
            if (!typeTextOnTop)
              Text(
                seatType,
                style: TextStyle(
                    color: highlighted ? Colors.white : seatTextColor,
                    height: 1.0,
                    fontSize: 9.0),
              ),
          ],
        ),
      );
    });
  }
}
