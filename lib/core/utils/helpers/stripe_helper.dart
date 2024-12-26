// import 'package:arestro/core/utils/helpers/dio_helper.dart';
// import 'package:arestro/core/utils/keys/stripe_keys.dart';
// import 'package:arestro/core/utils/models/stripe_models/ephemral_key_model.dart';
// import 'package:arestro/core/utils/models/stripe_models/payment_intent_input_model.dart';
// import 'package:arestro/core/utils/models/stripe_models/payment_intent_model.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
//
// class StripeHelper {
//   static late Stripe stripe;
//
//   static void initialStripe() {
//     stripe = Stripe.instance;
//     Stripe.publishableKey = StripeKeys.publishableKey;
//   }
//
//   // /v1/customers
//   static Future<String> createStripeCustomer()async{
//     var response = await DioHelper.postData(
//       url: '/v1/customers',
//       token: StripeKeys.secretKey,
//       contentType: Headers.formUrlEncodedContentType,
//     );
//     return response.data['id'];
//   }
//
//   // create payment intent
//   static Future<PaymentIntentModel> createPaymentIntent({
//     required PaymentIntentInputModel paymentIntentInputModel,
//   }) async {
//     var response = await DioHelper.postData(
//       url: '/v1/payment_intents',
//       data: paymentIntentInputModel.toJson(),
//       token: StripeKeys.secretKey,
//       contentType: Headers.formUrlEncodedContentType,
//     );
//     PaymentIntentModel paymentIntentModel =
//         PaymentIntentModel.fromJson(response.data);
//     return paymentIntentModel;
//   }
//
//   // create ephemeral key.
//   static Future<EphemeralKeyModel> createEphemeralKey({
//     required String customer,
//   }) async {
//     var response = await DioHelper.postData(
//       url: '/v1/ephemeral_keys',
//       data: {'customer': customer},
//       token: StripeKeys.secretKey,
//       contentType: Headers.formUrlEncodedContentType,
//       stripeVersion: '2024-06-20',
//     );
//     EphemeralKeyModel ephemeralKeyModel =
//         EphemeralKeyModel.fromJson(response.data);
//     return ephemeralKeyModel;
//   }
//
//   // init payment sheet.
//   static Future<void> initPaymentSheet({
//     required String customer,
//     required EphemeralKeyModel ephemeralKeyModel,
//     required PaymentIntentModel paymentIntentModel,
//   }) async {
//     await stripe.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         customerId: customer,
//         customerEphemeralKeySecret: ephemeralKeyModel.secret,
//         merchantDisplayName: 'Merchant Name',
//         paymentIntentClientSecret: paymentIntentModel.clientSecret,
//       ),
//     );
//   }
//
//   // show payment sheet.
//   static Future<void> showPaymentSheet() async {
//     await stripe.presentPaymentSheet();
//   }
//
//   // make payment.
//   static Future<void> makePayment({
//     required PaymentIntentInputModel paymentIntentInputModel,
//   }) async {
//     PaymentIntentModel paymentIntentModel;
//     EphemeralKeyModel ephemeralKeyModel;
//     await createPaymentIntent(paymentIntentInputModel: paymentIntentInputModel)
//         .then((value) async {
//       paymentIntentModel = value;
//       await createEphemeralKey(customer: paymentIntentInputModel.customerId!)
//           .then((value) async {
//         ephemeralKeyModel = value;
//         await initPaymentSheet(
//           customer: paymentIntentInputModel.customerId!,
//           ephemeralKeyModel: ephemeralKeyModel,
//           paymentIntentModel: paymentIntentModel,
//         ).then((value) async {
//           await showPaymentSheet();
//         });
//       });
//     });
//   }
// }
