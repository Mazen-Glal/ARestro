class PaymentIntentModel {
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  Null application;
  Null applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  Null canceledAt;
  Null cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  String? customer;
  Null description;
  Null invoice;
  Null lastPaymentError;
  Null latestCharge;
  bool? livemode;
  Tip? metadata;
  Null nextAction;
  Null onBehalfOf;
  Null paymentMethod;
  PaymentMethodOptions? paymentMethodOptions;
  List<dynamic>? paymentMethodTypes;
  Null processing;
  Null receiptEmail;
  Null review;
  Null setupFutureUsage;
  Null shipping;
  Null source;
  Null statementDescriptor;
  Null statementDescriptorSuffix;
  String? status;
  Null transferData;
  Null transferGroup;

  PaymentIntentModel({this.id, this.object, this.amount, this.amountCapturable, this.amountDetails, this.amountReceived, this.application, this.applicationFeeAmount, this.automaticPaymentMethods, this.canceledAt, this.cancellationReason, this.captureMethod, this.clientSecret, this.confirmationMethod, this.created, this.currency, this.customer, this.description, this.invoice, this.lastPaymentError, this.latestCharge, this.livemode, this.metadata, this.nextAction, this.onBehalfOf, this.paymentMethod, this.paymentMethodOptions, this.paymentMethodTypes, this.processing, this.receiptEmail, this.review, this.setupFutureUsage, this.shipping, this.source, this.statementDescriptor, this.statementDescriptorSuffix, this.status, this.transferData, this.transferGroup});

  PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    amount = json['amount'];
    amountCapturable = json['amount_capturable'];
    amountReceived = json['amount_received'];
    application = json['application'];
    applicationFeeAmount = json['application_fee_amount'];
    canceledAt = json['canceled_at'];
    cancellationReason = json['cancellation_reason'];
    captureMethod = json['capture_method'];
    clientSecret = json['client_secret'];
    confirmationMethod = json['confirmation_method'];
    created = json['created'];
    currency = json['currency'];
    customer = json['customer'];
    description = json['description'];
    invoice = json['invoice'];
    lastPaymentError = json['last_payment_error'];
    latestCharge = json['latest_charge'];
    livemode = json['livemode'];
    nextAction = json['next_action'];
    onBehalfOf = json['on_behalf_of'];
    paymentMethod = json['payment_method'];
    paymentMethodTypes = json['payment_method_types'].cast<dynamic>();
    processing = json['processing'];
    receiptEmail = json['receipt_email'];
    review = json['review'];
    setupFutureUsage = json['setup_future_usage'];
    shipping = json['shipping'];
    source = json['source'];
    statementDescriptor = json['statement_descriptor'];
    statementDescriptorSuffix = json['statement_descriptor_suffix'];
    status = json['status'];
    transferData = json['transfer_data'];
    transferGroup = json['transfer_group'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['object'] = object;
    data['amount'] = amount;
    data['amount_capturable'] = amountCapturable;
    if (amountDetails != null) {
      data['amount_details'] = amountDetails!.toJson();
    }
    data['amount_received'] = amountReceived;
    data['application'] = application;
    data['application_fee_amount'] = applicationFeeAmount;
    if (automaticPaymentMethods != null) {
      data['automatic_payment_methods'] = automaticPaymentMethods!.toJson();
    }
    data['canceled_at'] = canceledAt;
    data['cancellation_reason'] = cancellationReason;
    data['capture_method'] = captureMethod;
    data['client_secret'] = clientSecret;
    data['confirmation_method'] = confirmationMethod;
    data['created'] = created;
    data['currency'] = currency;
    data['customer'] = customer;
    data['description'] = description;
    data['invoice'] = invoice;
    data['last_payment_error'] = lastPaymentError;
    data['latest_charge'] = latestCharge;
    data['livemode'] = livemode;
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    data['next_action'] = nextAction;
    data['on_behalf_of'] = onBehalfOf;
    data['payment_method'] = paymentMethod;
    if (paymentMethodOptions != null) {
      data['payment_method_options'] = paymentMethodOptions!.toJson();
    }
    data['payment_method_types'] = paymentMethodTypes;
    data['processing'] = processing;
    data['receipt_email'] = receiptEmail;
    data['review'] = review;
    data['setup_future_usage'] = setupFutureUsage;
    data['shipping'] = shipping;
    data['source'] = source;
    data['statement_descriptor'] = statementDescriptor;
    data['statement_descriptor_suffix'] = statementDescriptorSuffix;
    data['status'] = status;
    data['transfer_data'] = transferData;
    data['transfer_group'] = transferGroup;
    return data;
  }
}

class AmountDetails {
  Tip? tip;

  AmountDetails({this.tip});

  AmountDetails.fromJson(Map<String, dynamic> json) {
    tip = json['tip'] != null ? Tip.fromJson(json['tip']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tip != null) {
      data['tip'] = tip!.toJson();
    }
    return data;
  }
}

class Tip {


  Tip();

  Tip.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}

class AutomaticPaymentMethods {
  bool? enabled;

  AutomaticPaymentMethods({this.enabled});

  AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['enabled'] = enabled;
    return data;
  }
}

class PaymentMethodOptions {
  Card? card;
  Link? link;

  PaymentMethodOptions({this.card, this.link});

  PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
    link = json['link'] != null ? Link.fromJson(json['link']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (card != null) {
      data['card'] = card!.toJson();
    }
    if (link != null) {
      data['link'] = link!.toJson();
    }
    return data;
  }
}

class Card {
  Null installments;
  Null mandateOptions;
  Null network;
  String? requestThreeDSecure;

  Card({this.installments, this.mandateOptions, this.network, this.requestThreeDSecure});

  Card.fromJson(Map<String, dynamic> json) {
    installments = json['installments'];
    mandateOptions = json['mandate_options'];
    network = json['network'];
    requestThreeDSecure = json['request_three_d_secure'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['installments'] = installments;
    data['mandate_options'] = mandateOptions;
    data['network'] = network;
    data['request_three_d_secure'] = requestThreeDSecure;
    return data;
  }
}

class Link {
  Null persistentToken;

  Link({this.persistentToken});

  Link.fromJson(Map<String, dynamic> json) {
    persistentToken = json['persistent_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['persistent_token'] = persistentToken;
    return data;
  }
}
