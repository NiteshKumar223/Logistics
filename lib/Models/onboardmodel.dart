
class ModelOnBoard {
  final String? image;
  final String? title;
  final String? description;

  ModelOnBoard({
    this.image,
    this.title,
    this.description,
  });
}
List <ModelOnBoard> contents = [

  ModelOnBoard(
    image: 'assets/images/onboarding1.png',
    title: 'Speed and Accuracy',
    description: 'The speed in Recieving and Delivering shipments with the utmost accuracy',
  ),
  ModelOnBoard(
    image: 'assets/images/onboarding2.png',
    title: 'Delivery Anywhere',
    description: 'We cover all over India shipments and reach every where',
  ),
  ModelOnBoard(
    image: 'assets/images/onboarding3.png',
    title: 'Protection and Safety',
    description: 'Protect your shipment from damage and loss',
  ),

];