import 'package:flutter/material.dart';

class MccCategory {
  final int code;
  final String description;
  final Color color;

  MccCategory(this.code, this.description, this.color);
}

class MccCodeUtils {
  List<MccCategory> mccCategories = [
    MccCategory(
      5411,
      'Фора',
      Colors.blue,
    ),
    MccCategory(
      5812,
      'Рестораны',
      Colors.red,
    ),
    MccCategory(
      4214,
      'Нова пошта(доставка)',
      Colors.red,
    ),
    MccCategory(
      6538,
      'Нова пошта(післяоплата)',
      Colors.red,
    ),
    MccCategory(
      5814,
      'Кохфе/пузатка',
      Colors.amber,
    ),
    MccCategory(
      5499,
      'Атб',
      Colors.deepOrange,
    ),
    MccCategory(
      5541,
      'Заправочные станции',
      Colors.orange,
    ),
    MccCategory(
      5912,
      'Аптеки',
      Colors.purple,
    ),
    MccCategory(
      5999,
      'Различные магазины и специальные розничные магазины',
      Colors.yellow,
    ),
    MccCategory(
      7832,
      'Кинотеатры',
      Colors.teal,
    ),
    MccCategory(
      5651,
      'Одежда',
      Colors.pink,
    ),
    MccCategory(
      7230,
      'Парикмахерские и салоны красоты',
      Colors.indigo,
    ),
    MccCategory(
      5813,
      'Бары и ночные клубы',
      Colors.deepPurple,
    ),
    MccCategory(
      5977,
      'Ювелирные магазины',
      Colors.cyan,
    ),
    MccCategory(
      4814,
      'Пополнение мобильного',
      Colors.deepPurple,
    ),
    MccCategory(
      6536,
      'Перевод мне на карту',
      Colors.teal,
    ),
    MccCategory(
      5941,
      'Спортивные товары',
      Colors.brown,
    ),
    MccCategory(
      7998,
      'Зверинцы и морские парки',
      Colors.lightGreen,
    ),
    MccCategory(
      5441,
      'Кондитерские',
      Colors.brown,
    ),
    MccCategory(
      5811,
      'Рестораны, уличная еда',
      Colors.deepPurple,
    ),
    MccCategory(
      4111,
      'Транспорт',
      Colors.pink,
    ),
    MccCategory(
      5976,
      'Оптовая торговля часами и ювелирными изделиями',
      Colors.indigo,
    ),
    MccCategory(
      5412,
      'Магазины пищевых продуктов и супермаркеты',
      Colors.lightBlue,
    ),
    MccCategory(
      5944,
      'Часовые магазины, часы, ювелирные украшения',
      Colors.deepOrange,
    ),
    MccCategory(
      5943,
      'Творчество',
      Colors.lightGreen,
    ),
    MccCategory(
      5732,
      'Цифровые товары',
      Colors.indigo,
    ),
    MccCategory(
      5722,
      'Цифровые товары',
      Colors.indigo,
    ),
    MccCategory(
      5462,
      'Булочные',
      Colors.lime,
    ),
    MccCategory(
      4112,
      'Укрзалізниця',
      Colors.red,
    ),
    MccCategory(
      5310,
      'Авророподобное',
      Colors.yellow,
    ),
    MccCategory(
      5399,
      'Аврора',
      Colors.yellow,
    ),
    MccCategory(
      5995,
      'Заведения для игр и азартных игр',
      Colors.blueGrey,
    ),
    MccCategory(
      4829,
      'Переводы',
      Colors.green,
    ),
  ];

  MccCategory getMccCategory(int mcc) {
    MccCategory? category = mccCategories.firstWhere(
      (category) => category.code == mcc,
      orElse: () =>
          MccCategory(mcc, 'Неизвестная категория($mcc)', Colors.grey[400]!),
    );
    return category;
  }
}
