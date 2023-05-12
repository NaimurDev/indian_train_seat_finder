import 'package:flutter/material.dart';
import 'package:train_seat/constants/colors.dart';
import 'package:train_seat/constants/seat_type.dart';
import 'package:train_seat/constants/sizes.dart';
import 'package:train_seat/pages/seat_finder/components/seat_handle_widget.dart';
import 'package:train_seat/pages/seat_finder/components/single_seat_box_widget.dart';

class SeatRow extends StatelessWidget {
  final int index;
  const SeatRow({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final sideSeatType =
        index % 2 == 0 ? SeatType.sideLower : SeatType.sideUpper;
    late final int leftStart;
    late final int rightStart;
    int n = index + 1;
    if (n % 2 == 0) {
      leftStart = (n - 1) * 4;
    } else {
      leftStart = (n - 2) * 4 + 5;
    }

    if (n % 2 == 0) {
      rightStart = n * 4;
    } else {
      rightStart = ((n + 1) * 4) - 1;
    }

    return Padding(
      padding: EdgeInsets.only(
          bottom: sideSeatType == SeatType.sideUpper ? 0 : 20, top: 1.0),
      child: Row(
        children: [
          /// seat handle
          SeatHandle(sideSeatType),
          Column(
            children: [
              if (sideSeatType == SeatType.sideLower)
                Container(
                  color: seatBorderColor,
                  height: 5,
                  width: seatWidth * 3 + 4,
                ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SingleSeatBox(
                      seatNo: leftStart,
                      seatType: SeatType.lower.displayName,
                      typeTextOnTop: sideSeatType == SeatType.sideUpper,
                      rowNo: index),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: SingleSeatBox(
                        seatNo: leftStart + 1,
                        seatType: SeatType.middle.displayName,
                        typeTextOnTop: sideSeatType == SeatType.sideUpper,
                        rowNo: index),
                  ),
                  SingleSeatBox(
                      seatNo: leftStart + 2,
                      seatType: SeatType.upper.displayName,
                      typeTextOnTop: sideSeatType == SeatType.sideUpper,
                      rowNo: index),
                ],
              ),
              if (sideSeatType == SeatType.sideUpper)
                Container(
                  color: seatBorderColor,
                  height: 5,
                  width: seatWidth * 3 + 4,
                ),
            ],
          ),
          SeatHandle(sideSeatType),
          const Spacer(),
          SeatHandle(sideSeatType),
          Column(
            children: [
              if (sideSeatType == SeatType.sideLower)
                Container(
                  color: seatBorderColor,
                  height: 5,
                  width: seatWidth,
                ),
              SingleSeatBox(
                  seatNo: rightStart,
                  seatType: sideSeatType.displayName,
                  typeTextOnTop: sideSeatType == SeatType.sideUpper,
                  rowNo: index),
              if (sideSeatType == SeatType.sideUpper)
                Container(
                  color: seatBorderColor,
                  height: 5,
                  width: seatWidth,
                ),
            ],
          ),
          SeatHandle(sideSeatType),
        ],
      ),
    );
  }
}
