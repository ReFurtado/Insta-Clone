class Itens {
  late String name, image;

  Itens({
    required this.name,
    required this.image,
  });
}

class ItensData {
  static List<Itens> itens = [
    Itens(
    name: 'John',  
    image: 'assets/images/user_1.jpg',  
    ),
    Itens(
      name: 'Michael',  
      image: 'assets/images/user_2.jpg', 
    ),
    Itens(
      name: 'Emily',  
      image: 'assets/images/user_3.jpg', 
    ),
    Itens(
      name: 'Sarah', 
      image: 'assets/images/user_4.jpg', 
    ),
    Itens(
      name: 'Christopher', 
      image: 'assets/images/user_5.jpg', 
    ),
    Itens(
      name: 'Jan', 
      image: 'assets/images/user_6.jpg', 
    ),
  ];
}

  
