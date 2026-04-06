import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class OrderRepository {
  const OrderRepository();

  Future<String> createOrder({
    required String paymentMethod,
    required double total,
    required Map<String, dynamic> shippingAddress,
    required List<Map<String, dynamic>> items,
  }) async {
    await _ensureFirebaseInitialized();

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

  Future<void> _ensureFirebaseInitialized() async {
    if (Firebase.apps.isNotEmpty) return;

    try {
      await Firebase.initializeApp();
    } catch (error) {
      throw StateError(
        'Firebase is not configured correctly. Please run flutterfire configure and add platform config files before placing orders. Original error: $error',
      );
    }
  }
}
