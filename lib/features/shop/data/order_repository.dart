import 'package:cloud_firestore/cloud_firestore.dart';

class OrderRepository {
  const OrderRepository();

  Future<String> createOrder({
    required String paymentMethod,
    required double total,
    required Map<String, dynamic> shippingAddress,
    required List<Map<String, dynamic>> items,
  }) async {
    final reference = await FirebaseFirestore.instance.collection('orders').add({
      'paymentMethod': paymentMethod,
      'total': total,
      'shippingAddress': shippingAddress,
      'items': items,
      'createdAt': FieldValue.serverTimestamp(),
      'status': 'pending',
    });

    return reference.id;
  }
}
