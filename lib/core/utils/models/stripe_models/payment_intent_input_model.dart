import 'dart:convert';
/// amount : 20
/// currency : "USD"

PaymentIntentInputModel paymentIntentInputModelFromJson(String str) => PaymentIntentInputModel.fromJson(json.decode(str));
String paymentIntentInputModelToJson(PaymentIntentInputModel data) => json.encode(data.toJson());
class PaymentIntentInputModel {
  num? _amount;
  String? _currency;
  String? _customerId;

  PaymentIntentInputModel({
    num? amount,
    String? currency,
    String? customerId,
  }){
    _amount = amount;
    _currency = currency;
    _customerId = customerId;
  }

  PaymentIntentInputModel.fromJson(dynamic json) {
    _amount = json['amount'];
    _currency = json['currency'];
    _customerId = json['customerId'];
  }
  PaymentIntentInputModel copyWith({  num? amount,
    String? currency,
    String? customerId,
  }) => PaymentIntentInputModel(  amount: amount ?? _amount,
    currency: currency ?? _currency,
  );
  num? get amount => _amount;
  String? get currency => _currency;
  String? get customerId => _customerId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = (_amount!*100);
    map['currency'] = _currency;
    map['customer'] = _customerId;
    return map;
  }

}