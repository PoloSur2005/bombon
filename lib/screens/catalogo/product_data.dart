class Product {
  final String title;
  final String image;
  final String price;
  final String days;
  final String description;

  Product({
    required this.title,
    required this.image,
    required this.price,
    required this.days,
    required this.description,
  });
}

class ProductData {
  List<Product> products = [
    Product(
      title: 'Ramo de Girasoles',
      image: 'images/products/ramo_girasoles.jpeg',
      price: '700.00',
      days: '6',
      description:
          'Ramo con 4 girasoles, 2 margaritas y una abeja, sujetado y decorado con papel',
    ),
    Product(
        title: 'Ramo Variado',
        image: '',
        price: '890.00',
        days: '9',
        description:
            'Ramo con flores de distintos colores, incluyendo un girasol, sujetado y decorado...'),
    Product(
        title: 'Ramo de Rosas y Conejitos',
        image: '',
        price: '580.00',
        days: '7',
        description:
            'Ramo con rosas de distintos tonos y con tres conejitos, sujetado y decorado con papel'),
    Product(
        title: 'Ramo Grande de Rosas',
        image: '',
        price: '1300.00',
        days: '15',
        description:
            'Ramo grande con rosas de distintos tonos, sujetado y decorado con papel'),
    Product(
        title: 'Girasoles de Colores',
        image: '',
        price: '360.00',
        days: '3',
        description:
            'Tres girasoles de distintos colores sujetados y decorados con papel'),
    Product(
        title: 'Ramo de Rosas Claras',
        image: '',
        price: '550.00',
        days: '7',
        description:
            'Ramo con rosas de color blanco y rosa claro, sujetado y decorado con papel'),
  ];
}
