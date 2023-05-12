part of 'seat_finder_bloc.dart';

abstract class SeatFinderEvent extends Equatable {
  const SeatFinderEvent();

  @override
  List<Object> get props => [];
}

class SeatFinderSeatFindEvent extends SeatFinderEvent {
  final int seatNo;

  const SeatFinderSeatFindEvent(this.seatNo);

  @override
  List<Object> get props => [seatNo];
}

class SeatScrollToRowEvent extends SeatFinderEvent {
  final int rowNo;
  final int seatNo;

  const SeatScrollToRowEvent({required this.rowNo, required this.seatNo});

  @override
  List<Object> get props => [rowNo, seatNo];
}
