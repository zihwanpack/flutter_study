import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

// enum 내부 값들은 따옴표없어도 자동으로 문자열 취급된다.
enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
    //  생성자의 구현부가 실행되기 전에 인스턴스 변수를 초기화할 수 있다.
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  // getter를 만들어서 read-only하게 만들어줌
  String get formattedDate {
    return formatter.format(date);
  }
}
