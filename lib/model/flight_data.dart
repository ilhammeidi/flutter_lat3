class FlightObj {
  final String from;
  final String to;
  final String codeFrom;
  final String codeTo;
  final String long;
  final String date;
  final String time;
  final int number;

  FlightObj({
    required this.from,
    required this.to,
    required this.codeFrom,
    required this.codeTo,
    required this.long,
    required this.date,
    required this.time,
    required this.number
  });
}

final List flightData = [
  FlightObj(
    from: 'Bandung', to: 'Jakarta',
    codeFrom: 'BDG', codeTo: "JKT",
    long: '1H 30M',date: '2 SEP', time: '08:00 AM',
    number: 12
  ),
  FlightObj(
    from: 'Solo', to: 'Semarang',
    codeFrom: 'SLO', codeTo: "SEM",
    long: '1H 30M',date: '3 SEP', time: '08:15 AM',
    number: 13
  ),
  FlightObj(
    from: 'Tokyo', to: 'Melbourne',
    codeFrom: 'TKY', codeTo: "MLB",
    long: '16H 25M',date: '4 SEP', time: '10:00 PM',
    number: 10
  ),
];