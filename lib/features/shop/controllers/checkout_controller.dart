import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/features/shop/data/order_repository.dart';
import 'package:storeapp/features/shop/models/payment_method_model.dart';
import 'package:storeapp/utils/constants/image_strings.dart';

class CheckoutController extends GetxController {
  CheckoutController({OrderRepository? orderRepository})
      : _orderRepository = orderRepository ?? const OrderRepository();

  final OrderRepository _orderRepository;

  final RxBool isPlacingOrder = false.obs;

  final List<PaymentMethodModel> paymentMethods = const [
    PaymentMethodModel(id: 'paypal', title: 'PayPal', asset: TImages.paypal),
    PaymentMethodModel(id: 'apple_pay', title: 'Apple Pay', asset: TImages.applePay),
    PaymentMethodModel(id: 'google_pay', title: 'Google Pay', asset: TImages.googlePay),
    PaymentMethodModel(id: 'visa', title: 'Visa', asset: TImages.visa),
    PaymentMethodModel(id: 'master_card', title: 'Master Card', asset: TImages.masterCard),
  ];

  late final Rx<PaymentMethodModel> selectedPaymentMethod = paymentMethods.first.obs;

  void selectPaymentMethod(PaymentMethodModel method) {
    selectedPaymentMethod.value = method;
  }

  Future<bool> placeOrder() async {
    if (isPlacingOrder.value) return false;

    isPlacingOrder.value = true;

    try {
      await _orderRepository.createOrder(
        paymentMethod: selectedPaymentMethod.value.id,
        total: 256.0,
        shippingAddress: const {
          'fullName': 'Ehab Samy',
          'phone': '+20 01125165932',
          'city': 'Cairo',
          'country': 'Egypt',
          'street': 'Helwan',
        },
        items: const [
          {
            'productId': 'nike-air-max',
            'name': 'Nike Air Max',
            'quantity': 1,
            'price': 256.0,
          }
        ],
      );

      return true;
    } catch (error) {
      Get.snackbar(
        'Checkout failed',
        'Could not save order to database: $error',
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    } finally {
      isPlacingOrder.value = false;
    }
  }

  void showPaymentMethodsSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) {
        return SafeArea(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: paymentMethods.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (_, index) {
              final method = paymentMethods[index];
              final isSelected = selectedPaymentMethod.value.id == method.id;

              return ListTile(
                leading: Image.asset(method.asset, width: 30, height: 30),
                title: Text(method.title),
                trailing: isSelected
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : null,
                onTap: () {
                  selectPaymentMethod(method);
                  Get.back();
                },
              );
            },
          ),
        );
      },
    );
  }
}
