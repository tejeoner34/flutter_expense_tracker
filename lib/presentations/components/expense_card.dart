import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expense.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(expense.expenseIcon),
                    Text('${expense.formattedDate}'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
