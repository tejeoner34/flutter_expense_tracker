import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final dateFormatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const Map<Category, IconData> categoryIcons = {
  Category.food: Icons.food_bank,
  Category.work: Icons.work,
  Category.leisure: Icons.gamepad,
  Category.travel: Icons.travel_explore,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  })  : id = uuid.v4(),
        expenseIcon = categoryIcons[category]!;

  final IconData expenseIcon;
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  get formattedDate {
    return dateFormatter.format(date);
  }
}
