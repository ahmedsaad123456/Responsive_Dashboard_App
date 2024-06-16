
class TransactionHistoryItemModel {
  final String title;
  final String date;
  final String price;
  final bool isWithdrawal;

  const TransactionHistoryItemModel(
      {required this.title,
      required this.date,
      required this.price,
      required this.isWithdrawal});
}
