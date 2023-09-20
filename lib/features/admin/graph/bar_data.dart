// class BarData {
//   final double mobilesAmount;
//   final double essentialsAmount;
//   final double booksAmount;
//   final double appliancesAmount;
//   final double fashionAmount;
//   BarData({
//     required this.mobilesAmount,
//     required this.essentialsAmount,
//     required this.booksAmount,
//     required this.appliancesAmount,
//     required this.fashionAmount,
//   });

//   List<IndividualBar> barData = [];

//   void initializeBarData() {
//     barData = [
//       IndividualBar(x: 1, y: mobilesAmount),
//       IndividualBar(x: 2, y: essentialsAmount),
//       IndividualBar(x: 3, y: booksAmount),
//       IndividualBar(x: 4, y: appliancesAmount),
//       IndividualBar(x: 5, y: fashionAmount),
//     ];
//   }
// }

class ChartData {
  final String x;
  final int y1;
  ChartData({
    required this.x,
    required this.y1,
  });
}
