class TransactionsEntity {
  TransactionsEntity({
    required this.cost,
    required this.status,
    required this.image,
    required this.isIncrease,
    required this.date,
  });
  String image;
  bool isIncrease;
  double cost;
  String status;
  DateTime date;
}
