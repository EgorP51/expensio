import 'package:expensio/app/core/utils/time_utils.dart';
import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/data/models/monobank_finance.dart';

class StatisticWidget extends StatelessWidget {
  const StatisticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatisticsBloc, StatisticsState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.separated(
          itemCount: state.financialExpenses?.length ?? 0,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.financialExpenses?[index].description ?? ''),
              subtitle: Text(
                TimeUtils().formatDateTime(
                  DateTime.fromMillisecondsSinceEpoch(
                    (state.financialExpenses![index].time ?? 0) * 1000,
                  ),
                ),
              ),
              trailing: Text(
                (state.financialExpenses![index].amount! / 100).toStringAsFixed(
                  1,
                ),
              ),
            );
          },
        );
      },
      listener: (context, state) {},
    );
  }
}

// TODO: figure out what to do with it later!
// class MyApp extends StatelessWidget {
//   final List<MonobankFinance> transactionData;
//
//   const MyApp(this.transactionData, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Map<int, double> categorySumMap = {};
//
//     for (var transaction in transactionData) {
//       var mcc = transaction.mcc;
//       var amount = (transaction.amount ?? 0) / 1000;
//
//       if (categorySumMap.containsKey(mcc)) {
//         categorySumMap[mcc ?? 0] = categorySumMap[mcc]! + amount;
//       } else {
//         categorySumMap[mcc ?? 0] = amount;
//       }
//     }
//
//     final List<ChartData> chartData = [];
//
//     categorySumMap.forEach((category, amount) {
//       chartData.add(ChartData(category, amount));
//     });
//
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('График категорий товаров'),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: Center(
//                 child: SfCircularChart(
//                   series: <CircularSeries>[
//                     PieSeries<ChartData, String>(
//                       dataSource: chartData,
//                       pointColorMapper: (ChartData data, _) => data.color,
//                       xValueMapper: (ChartData data, _) => data.x.toString(),
//                       yValueMapper: (ChartData data, _) => data.y,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Суммы по категориям',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: chartData.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text('Категория: ${mccToDescription(chartData[index].x)}'),
//                     subtitle: Text('Сумма: ${chartData[index].y}'),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   String mccToDescription(int mcc) {
//     switch (mcc) {
//       case 5411:
//         return 'Супермаркеты';
//       case 5812:
//         return 'Рестораны';
//       case 5814:
//         return 'Фаст-фуд рестораны';
//       case 5541:
//         return 'Заправочные станции';
//       case 5912:
//         return 'Аптеки';
//       case 5999:
//         return 'Различные магазины и специальные розничные магазины';
//       case 7832:
//         return 'Кинотеатры';
//       case 7230:
//         return 'Парикмахерские и салоны красоты';
//       case 5813:
//         return 'Бары и ночные клубы';
//       case 5977:
//         return 'Ювелирные магазины';
//       case 5941:
//         return 'Спортивные товары';
//       case 5691:
//         return 'Магазины мужской и женской одежды';
//       case 5811:
//         return 'Рестораны, уличная еда';
//       case 5815:
//         return 'Кейтеринг, услуги по обслуживанию питания';
//       case 5976:
//         return 'Оптовая торговля часами и ювелирными изделиями';
//       case 5412:
//         return 'Магазины пищевых продуктов и супермаркеты';
//       case 5944:
//         return 'Часовые магазины, часы, ювелирные украшения';
//       case 5943:
//         return 'Плавательные бассейны, принадлежности к плаванию';
//       case 5816:
//         return 'Цифровые товары - загрузки';
//       case 5995:
//         return 'Заведения для игр и азартных игр';
//       default:
//         return 'Неизвестная категория';
//     }
//   }
// }
//
//
// class TransactionData {
//   final int mccCategory;
//   final double amount;
//
//   TransactionData(this.mccCategory, this.amount);
// }
//
// class ChartData {
//   ChartData(this.x, this.y, [this.color]);
//
//   final int x;
//   final double y;
//   final Color? color;
// }
