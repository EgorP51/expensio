import 'package:flutter/material.dart';

// TODO: maybe it better to create class with 3 field(code, description, color)
class MccCodeUtils {
  String mccToDescription(int mcc) {
    switch (mcc) {
      case 5411:
        return 'Фора';
      case 5812:
        return 'Рестораны';
      case 5814:
        return 'Їжакохфе';
      case 5499:
        return 'Атб';
      case 5541:
        return 'Заправочные станции';
      case 5912:
        return 'Аптеки';
      case 5999:
        return 'Различные магазины и специальные розничные магазины';
      case 7832:
        return 'Кинотеатры';
      case 5651:
        return 'Одежда';
      case 7230:
        return 'Парикмахерские и салоны красоты';
      case 5813:
        return 'Бары и ночные клубы';
      case 5977:
        return 'Ювелирные магазины';
      case 4814:
        return 'Пополнение мобильного';
      case 6536:
        return 'Перевод мне на карту';
      case 5941:
        return 'Спортивные товары';
      case 7998:
        return 'Зверинцы и морские парки';
      case 5441:
        return 'Кондитерские';
      case 5811:
        return 'Рестораны, уличная еда';
      case 4111:
        return 'Транспорт';
      case 5976:
        return 'Оптовая торговля часами и ювелирными изделиями';
      case 5412:
        return 'Магазины пищевых продуктов и супермаркеты';
      case 5944:
        return 'Часовые магазины, часы, ювелирные украшения';
      case 5943:
        return 'Кпи принт';
      case 5732:
        return 'Цифровые товары - загрузки';
      case 5462:
        return 'Булочные';
      case 4112:
        return 'Укрзалізниця';
      case 5310:
        return 'Авророподобное';
      case 5995:
        return 'Заведения для игр и азартных игр';
      case 4829:
        return 'Переводы';
      default:
        return 'Неизвестная категория($mcc)';
    }
  }

  Color getCategoryColor(int mcc) {
    switch (mcc) {
      case 5411:
        return Colors.blue;
      case 5812:
        return Colors.red;
      case 4112:
        return Colors.red;
      case 5814:
        return Colors.amber;
      case 5541:
        return Colors.orange;
      case 5912:
        return Colors.purple;
      case 5999:
        return Colors.yellow;
      case 5310:
        return Colors.yellow;
      case 7832:
        return Colors.teal;
      case 6536:
        return Colors.teal;
      case 7230:
        return Colors.indigo;
      case 5732:
        return Colors.indigo;
      case 4111:
        return Colors.pink;
      case 5651:
        return Colors.pink;
      case 5977:
        return Colors.cyan;
      case 5941:
        return Colors.brown;
      case 5691:
        return Colors.grey;
      case 5811:
        return Colors.deepPurple;
      case 4814:
        return Colors.deepPurple;
      case 5462:
        return Colors.lime;
      case 5412:
        return Colors.lightBlue;
      case 5944:
        return Colors.deepOrange;
      case 5499:
        return Colors.deepOrange;
      case 5943:
        return Colors.lightGreen;
      case 4829:
        return Colors.green;
      case 5816:
        return Colors.pinkAccent;
      case 5995:
        return Colors.blueGrey;
      case 7998:
        return Colors.lightGreen;
      case 5441:
        return Colors.brown;
      default:
        return Colors.black;
    }
  }
}
