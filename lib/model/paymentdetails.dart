class PaymentDetails {
  String payeeName;
  String payeeAccountNumber;
  String ifscCode;
  String branch;
  double amountTransferred;
  String date;

  PaymentDetails(
      {this.payeeName,
      this.payeeAccountNumber,
      this.ifscCode,
      this.branch,
      this.amountTransferred,
      this.date});
}
