import 'package:expences/widgets/new_transaction.dart';
import 'package:expences/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      title: "shoes",
      amount: 55.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "book",
      amount: 12.55,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(
    String txTitle,
    double txAmount,
  ) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState((){
      _userTransactions.add(newTx);
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionsList(_userTransactions),
      ],
    );
  }
}
