import 'package:automobile_spare_parts_app/data/models/order.model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class OrderService {
  final orderCollection = FirebaseDatabase.instance.ref().child('orders');
  final itemCollection = FirebaseDatabase.instance.ref().child('items');

  Future<void> createOrder(OrderModel orderModel) async {
    await orderCollection
        .push()
        .set({
          'userId': orderModel.userId,
          'orderNumber': orderModel.orderNumber,
          'imgUrl': orderModel.imgUrl,
          'itemId': orderModel.itemId,
          'itemPrice': orderModel.itemPrice,
          'itemName': orderModel.itemName,
          'quantity': orderModel.quantity,
          'totalPrice': orderModel.totalPrice,
          'deliveryAddress': orderModel.deliveryAddress,
        })
        .then((value) => print("Order Placed Successfully"))
        .catchError((error) => print("Order Failed"));
  }

  Future<void> updateOrder(OrderModel order, String? orderId) async {
    final Map<String, dynamic> updateData = {
      'userId': order.userId,
      'orderNumber': order.orderNumber,
      'imgUrl': order.imgUrl,
      'itemId': order.itemId,
      'itemName': order.itemName,
      'quantity': order.quantity,
      'totalPrice': order.totalPrice,
      'deliveryAddress': order.deliveryAddress,
    };

    await orderCollection
        .child(orderId ?? "")
        .update(updateData)
        .then((value) => print("Order Updated Successfully"))
        .catchError((error) => print("Failed"));
  }

  Future<void> deleteOrder(String? orderId) async {
    await orderCollection
        .child(orderId ?? "")
        .remove()
        .then((value) => print("Order Deleted Successfully"))
        .catchError((error) => print("Failed"));
  }
}
