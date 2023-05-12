import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'seat_finder_event.dart';
part 'seat_finder_state.dart';

class SeatFinderBloc extends Bloc<SeatFinderEvent, SeatFinderState> {
  SeatFinderBloc() : super(SeatFinderInitial()) {
    on<SeatFinderSeatFindEvent>((event, emit) {
      emit(SeatFinderSeatSelected(
        seatNo: event.seatNo,
      ));
    });
    on<SeatScrollToRowEvent>((event, emit) {
      emit(SeatFinderRowSelected(
        rowNo: event.rowNo,
        seatNo: event.seatNo,
      ));
    });
  }
}
