class FeeRecordModel {
  final int sn;
  final double amount;
  final String dueDate;
  final bool paid;

  FeeRecordModel({
    required this.sn,
    required this.amount,
    required this.dueDate,
    required this.paid,
  });
}
