import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:amazon_clone_tutorial/features/admin/graph/bar_data.dart';

// class CategoryProductsChart extends StatelessWidget {
//   final List weeklySummary;
//   const CategoryProductsChart({
//     Key? key,
//     required this.weeklySummary,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     BarData myBardata = BarData(
//       mobilesAmount: weeklySummary[0],
//       essentialsAmount: weeklySummary[1],
//       booksAmount: weeklySummary[2],
//       appliancesAmount: weeklySummary[3],
//       fashionAmount: weeklySummary[4],
//     );
//     myBardata.initializeBarData();
//     return BarChart(BarChartData(
//         maxY: 100,
//         minY: 0,
//         barGroups: myBardata.barData
//             .map(
//               (data) => BarChartGroupData(x: data.x.toInt(), barRods: [
//                 BarChartRodData(toY: data.y),
//               ]),
//             )
//             .toList()));
//   }
// }

class CategoryProductsChart extends StatefulWidget {
  const CategoryProductsChart({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryProductsChart> createState() => _CategoryProductsChartState();
}

class _CategoryProductsChartState extends State<CategoryProductsChart> {
  // final List<ChartData> chartData = [];
  // final AdminServices adminServices = AdminServices();
  // int? totalSales;

  // List<Sales>? earnings;

  // @override
  // void initState() {
  //   super.initState();
  //   getEarnings();
  // }

  // getEarnings() async {
  //   var earningData = await adminServices.getEarnings(context);
  //   totalSales = earningData['totalEarnings'];
  //   earnings = earningData['sales'];
  //   setState(() {});
  // }

  // getSale() async {
  //   var earningDatachart = await adminServices.getEarnings(context);

  //   // for (var i = 0; i < earnings!.length; i++) {
  //   //   chartData.add(ChartData(x: 'Mobiles', y1: earningDatachart[i]));
  //   // }
  //   chartData.add(ChartData(x: 'Mobiles', y1: earnings!));
  // }

  final List<ChartData> chartData = [
    ChartData(x: 'Moblie', y1: 293939),
    ChartData(x: 'Essentials', y1: 4939),
    ChartData(x: 'Books', y1: 34344),
    ChartData(x: 'Appliances', y1: 2353),
    ChartData(x: 'Fashion', y1: 87879),
  ];
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      series: [
        StackedColumnSeries(
            dataSource: chartData,
            xValueMapper: (ChartData ch, _) => ch.x,
            yValueMapper: (ChartData ch, _) => ch.y1),
      ],
    );
  }
}
