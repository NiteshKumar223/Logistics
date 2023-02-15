

class DeliveredData {
  static final modeldels = [
    ModelDelivered(
      delToName: "Mohammad Aziz", 
      delPrice: "Rs. 220", 
      delKind: "2 Bag", 
      delStatus: "Delivered",
    )
  ]; 
}


class ModelDelivered {
  // final String delId;
  final String delToName;
  final String delPrice;
  final String delKind;
  final String delStatus;


  ModelDelivered({
  // required this.delId,
  required this.delToName,
  required this.delPrice,
  required this.delKind,
  required this.delStatus,
  });
}