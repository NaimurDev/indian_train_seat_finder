import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'seat_finder_event.dart';
part 'seat_finder_state.dart';

class SeatFinderBloc extends Bloc<SeatFinderEvent, SeatFinderState> {
  SeatFinderBloc() : super(SeatFinderInitial()) {
    on<SeatFinderSeatFindEvent>((event, emit) {
      print("seat finder find event ${event.seatNo}");
      emit(SeatFinderSeatSelected(event.seatNo));
    });
  }
}
