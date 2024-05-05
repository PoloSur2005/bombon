class Product {
  final String title;
  final String imageCutted;
  final String image;
  final String price;
  final String days;
  final String description;

  Product({
    required this.title,
    required this.imageCutted,
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
      imageCutted: 'images/products/ramo_girasoles.png',
      image: 'images/products/ramo_girasoles.jpeg',
      price: '700.00',
      days: '6',
      description:
          'Ramo con 4 girasoles, 2 margaritas y una abeja, sujetado y decorado con papel',
    ),
    Product(
        title: 'Ramo Variado',
        imageCutted: 'images/products/ramo_variado.png',
        image: 'images/products/ramo_variado.jpeg',
        price: '890.00',
        days: '9',
        description:
            'Ramo con flores de distintos colores, incluyendo un girasol, sujetado y decorado...'),
    Product(
        title: 'Ramo de Rosas y Conejitos',
        imageCutted: 'images/products/ramo_rosas_conejitos.png',
        image: 'images/products/ramo_rosas_conejitos.jpeg',
        price: '580.00',
        days: '7',
        description:
            'Ramo con rosas de distintos tonos y con tres conejitos, sujetado y decorado con papel'),
    Product(
        title: 'Ramo Grande de Rosas',
        imageCutted: 'images/products/ramo_grande_rosas.png',
        image: 'images/products/ramo_grande_rosas.jpeg',
        price: '1300.00',
        days: '15',
        description:
            'Ramo grande con rosas de distintos tonos, sujetado y decorado con papel'),
    Product(
        title: 'Girasoles de Colores',
        imageCutted: 'images/products/girasoles_colores.png',
        image: 'images/products/girasoles_colores.jpeg',
        price: '360.00',
        days: '3',
        description:
            'Tres girasoles de distintos colores sujetados y decorados con papel'),
    Product(
        title: 'Ramo de Rosas Claras',
        imageCutted: 'images/products/ramo_rosas_claras.png',
        image: 'images/products/ramo_rosas_claras.jpeg',
        price: '550.00',
        days: '7',
        description:
            'Ramo con rosas de color blanco y rosa claro, sujetado y decorado con papel'),
  ];
}
