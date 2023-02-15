



class OrderData {
  static final modelorders = [
    ModelOrder(
      orderFrom: "Indira Nagar,Lucknow,UP", 
      orderTo: "Uttam Nagar,Delhi,IND", 
      orderDate: "12/02/2023", 
      orderDelDate: "18/02/2023",
    )
  ]; 
}


class ModelOrder {
  // final String orderId;
  final String orderFrom;
  final String orderTo;
  final String orderDate;
  final String orderDelDate;


  ModelOrder({
  // required this.orderId,
  required this.orderFrom,
  required this.orderTo,
  required this.orderDate,
  required this.orderDelDate,
  });
}