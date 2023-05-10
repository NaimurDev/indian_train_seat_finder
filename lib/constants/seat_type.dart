enum SeatType {
  lower,
  middle,
  upper,
  sideLower,
  sideUpper,
}

extension SeatTypeExtension on SeatType {
  String get displayName {
    switch (this) {
      case SeatType.lower:
        return 'Lower';
      case SeatType.middle:
        return 'Middle';
      case SeatType.upper:
        return 'Upper';
      case SeatType.sideLower:
        return 'Side Lower';
      case SeatType.sideUpper:
        return 'Side Upper';
      default:
        return "Error";
    }
  }
}
