import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expense.dart';
import 'package:flutter_expense_tracker/presentations/components/expenses_list.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expense> _expensesMock = [
    Expense(
      title: 'Curso japonés',
      amount: 20.50,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Sushi',
      amount: 12.25,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Viaje a Japón',
      amount: 100,
      date: DateTime.now(),
      category: Category.travel,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Hello world'),
          Expanded(
            child: ExpensesList(expensesList: _expensesMock),
          )
        ],
      ),
    );
  }
}
