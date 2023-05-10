import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_seat/bloc/seat_finder_bloc.dart';
import 'package:train_seat/pages/seat_finder/components/seat_row_widget.dart';

class SeatFinderPage extends StatelessWidget {
  SeatFinderPage({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Seat Finder")),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter seat number'),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        final seatNo = int.tryParse(controller.text);
                        if (seatNo != null) {
                          context
                              .read<SeatFinderBloc>()
                              .add(SeatFinderSeatFindEvent(seatNo));
                        }
                      },
                      child: const Text("Find"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) => SeatRow(index: index)),
          ),
        ],
      ),
    );
  }
}
