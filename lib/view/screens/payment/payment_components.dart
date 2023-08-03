part of '../../../../packages/packages.dart';

class PaymentSystemCard extends StatelessWidget {
  const PaymentSystemCard({Key? key, required this.paymentSystem})
      : super(key: key);

  final PaymentSystemModel paymentSystem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 120,
      decoration: BoxDecoration(
        color: AppColors.kwhiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            paymentSystem.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            paymentSystem.description,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          const Text(
            'Free',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
