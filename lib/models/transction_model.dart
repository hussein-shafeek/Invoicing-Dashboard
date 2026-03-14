enum TransactionType { withdrawal, income }

class TransctionModel {
  final String title, date, amount;
  final TransactionType transactionType;

  const TransctionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.transactionType,
  });
}
