part of 'seat_finder_bloc.dart';

abstract class SeatFinderState extends Equatable {
  const SeatFinderState();

  @override
  List<Object> get props => [];
}

class SeatFinderInitial extends SeatFinderState {}

class SeatFinderLoading extends SeatFinderState {}

class SeatFinderSeatSelected extends SeatFinderState {
  final int seatNo;

  const SeatFinderSeatSelected({required this.seatNo});

  @override
  List<Object> get props => [seatNo];
}

class SeatFinderRowSelected extends SeatFinderState {
  final int seatNo;
  final int rowNo;

  const SeatFinderRowSelected({required this.seatNo, required this.rowNo});

  @override
  List<Object> get props => [seatNo, rowNo];
}

class SeatFinderError extends SeatFinderState {
  final String message;

  const SeatFinderError(this.message);

  @override
  List<Object> get props => [message];
}
