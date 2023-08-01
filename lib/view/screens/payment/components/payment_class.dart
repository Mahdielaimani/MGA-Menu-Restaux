class PaymentSystemModel {
  final String name;
  final String description;

  PaymentSystemModel({
    required this.name,
    required this.description,
  });
}

// Data for the payment systems
final List<PaymentSystemModel> paymentSystems = [
  PaymentSystemModel(
    name: 'Stripe',
    description: 'Payment System',
  ),
  PaymentSystemModel(
    name: 'Checkout',
    description: 'Payment System',
  ),
  PaymentSystemModel(
    name: 'Iyzipay',
    description: 'Payment System',
  ),
  PaymentSystemModel(
    name: 'Square',
    description: 'Payment System',
  ),
  PaymentSystemModel(
    name: 'SumUp',
    description: 'Payment System',
  ),
  PaymentSystemModel(
    name: 'STC Pay',
    description: 'Payment System',
  ),
  PaymentSystemModel(
    name: 'Pay2M',
    description: 'Payment System',
  ),
  PaymentSystemModel(
    name: 'Myfatoorah',
    description: 'Payment System',
  ),
];
