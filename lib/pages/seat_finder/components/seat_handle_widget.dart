import 'package:flutter/material.dart';
import 'package:train_seat/constants/colors.dart';
import 'package:train_seat/constants/seat_type.dart';
import 'package:train_seat/constants/sizes.dart';

class SeatHandle extends StatelessWidget {
  final SeatType sideSeatType;
  const SeatHandle(this.sideSeatType, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: seatHeight,
      width: seatHandleWidth,
      child: Align(
        alignment: sideSeatType == SeatType.sideLower
            ? Alignment.topLeft
            : Alignment.bottomLeft,
        child: Container(
          color: seatBorderColor,
          width: seatHandleWidth,
          height: seatHandleHeight,
        ),
      ),
    );
  }
}
