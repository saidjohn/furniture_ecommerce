

class CreditCard implements Comparable<CreditCard> {
  String id;
  String cardNumber;
  String cardHolderName;
  String expirationMonth;
  String expirationYear;
  String cvv;
  String type;

  CreditCard(
      {required this.id,
      required this.cardNumber,
      required this.cardHolderName,
      required this.expirationMonth,
      required this.expirationYear,
      required this.cvv,
      required this.type});

  factory CreditCard.fromJson(Map<String, Object?> json) => CreditCard(
        id: json["id"] as String,
        cardNumber: json["cardNumber"] as String,
        cardHolderName: json["cardHolderName"] as String,
        expirationMonth: json["cexpirationMonth"] as String,
        expirationYear: json["expirationYear"] as String,
        cvv: json["cvv"] as String,
        type: json["type"] as String,
      );

  Map<String, Object?> toJson() => {
        "id": id,
        "cardNumber": cardNumber,
        "cardHolderName": cardHolderName,
        "expirationMonth": expirationMonth,
        "expirationYear": expirationYear,
        "cvv": cvv,
        "type": type,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditCard &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          cardNumber == other.cardNumber &&
          cardHolderName == other.cardHolderName &&
          expirationMonth == other.expirationMonth &&
          expirationYear == other.expirationYear &&
          cvv == other.cvv &&
          type == other.type;

  @override
  int get hashCode => Object.hash(id, cardNumber, cardHolderName,
      expirationMonth, expirationYear, cvv, type);

  @override
  String toString() {
    return 'CreditCard{id: $id, cardNumber: $cardNumber, cardHolderName: $cardHolderName, expirationMonth: $expirationMonth, expirationYear: $expirationYear, cvv: $cvv, type: $type}';
  }

  @override
  int compareTo(CreditCard other) {
    return id.compareTo(other.id);
  }
}
