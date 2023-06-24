class Engin {
  int? id;
  User user;
  String name;
  String description;
  String status;
  double rate;
  double price;
  List<String> images;

  Engin({
    this.id,
    required this.user,
    required this.name,
    required this.description,
    required this.status,
    required this.rate,
    required this.price,
    required this.images,
  });
}

class User {
  String name;
  String email;

  User({
    required this.name,
    required this.email,
  });
}

List<Engin> engins = [
  Engin(
    id: 1,
    user: User(name: "John Doe", email: "johndoe@example.com"),
    name: "Tracteur agricole",
    description: "Tracteur puissant pour les travaux agricoles",
    status: "Disponible",
    rate: 4.5,
    price: 100.0,
    images: [
      "tracteur.jpeg",
    ],
  ),
  Engin(
    id: 2,
    user: User(name: "Jane Smith", email: "janesmith@example.com"),
    name: "Moissonneuse-batteuse",
    description: "Moissonneuse-batteuse pour récolter les céréales",
    status: "Disponible",
    rate: 4.2,
    price: 200.0,
    images: [
      "batteuse.jpeg",
    ],
  ),
  Engin(
    id: 3,
    user: User(name: "Robert Johnson", email: "robertjohnson@example.com"),
    name: "Épandeur d'engrais",
    description: "Épandeur d'engrais pour fertiliser les champs",
    status: "Disponible",
    rate: 4.0,
    price: 80.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 4,
    user: User(name: "Emily Wilson", email: "emilywilson@example.com"),
    name: "Pulvérisateur agricole",
    description: "Pulvérisateur pour l'application de produits chimiques",
    status: "Disponible",
    rate: 4.8,
    price: 150.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 5,
    user: User(name: "Michael Brown", email: "michaelbrown@example.com"),
    name: "Charrue agricole",
    description: "Charrue pour labourer les champs",
    status: "Disponible",
    rate: 4.3,
    price: 90.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 6,
    user: User(name: "Sophia Davis", email: "sophiadavis@example.com"),
    name: "Remorque agricole",
    description: "Remorque pour transporter les récoltes",
    status: "Disponible",
    rate: 4.1,
    price: 70.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 7,
    user: User(name: "Matthew Taylor", email: "matthewtaylor@example.com"),
    name: "Herse rotative",
    description: "Herse rotative pour préparer le sol",
    status: "Disponible",
    rate: 4.6,
    price: 120.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 8,
    user: User(name: "Olivia Anderson", email: "oliviaanderson@example.com"),
    name: "Semoir agricole",
    description: "Semoir pour planter les graines",
    status: "Disponible",
    rate: 4.4,
    price: 110.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 9,
    user: User(name: "Daniel Martinez", email: "danielmartinez@example.com"),
    name: "Tondeuse agricole",
    description: "Tondeuse pour entretenir les espaces verts",
    status: "Disponible",
    rate: 4.7,
    price: 130.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 10,
    user: User(name: "Ava Thomas", email: "avathomas@example.com"),
    name: "Déchaumeur agricole",
    description: "Déchaumeur pour travailler le sol après la récolte",
    status: "Disponible",
    rate: 4.2,
    price: 90.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 11,
    user: User(name: "James White", email: "jameswhite@example.com"),
    name: "Bineuse agricole",
    description: "Bineuse pour éliminer les mauvaises herbes",
    status: "Disponible",
    rate: 4.3,
    price: 80.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 12,
    user: User(name: "Mia Martinez", email: "miamartinez@example.com"),
    name: "Épandeur de fumier",
    description: "Épandeur de fumier pour fertiliser les champs",
    status: "Disponible",
    rate: 4.1,
    price: 100.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 13,
    user: User(name: "Liam Johnson", email: "liamjohnson@example.com"),
    name: "Enrubanneuse",
    description: "Enrubanneuse pour l'emballage du fourrage",
    status: "Disponible",
    rate: 4.5,
    price: 180.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 14,
    user: User(name: "Sophie Wilson", email: "sophiewilson@example.com"),
    name: "Faucheuse agricole",
    description: "Faucheuse pour la coupe des cultures",
    status: "Disponible",
    rate: 4.4,
    price: 150.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 15,
    user: User(name: "Ethan Anderson", email: "ethananderson@example.com"),
    name: "Épareuse agricole",
    description: "Épareuse pour l'entretien des haies et des broussailles",
    status: "Disponible",
    rate: 4.3,
    price: 120.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 16,
    user: User(name: "Chloe Taylor", email: "chloetaylor@example.com"),
    name: "Épandeur à sel",
    description: "Épandeur à sel pour déneiger les routes",
    status: "Disponible",
    rate: 4.2,
    price: 90.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 17,
    user: User(name: "Noah Brown", email: "noahbrown@example.com"),
    name: "Pressoir à fruits",
    description: "Pressoir pour extraire le jus des fruits",
    status: "Disponible",
    rate: 4.6,
    price: 160.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 18,
    user: User(name: "Avery Davis", email: "averydavis@example.com"),
    name: "Transplanteur",
    description: "Transplanteur pour planter les jeunes plants",
    status: "Disponible",
    rate: 4.3,
    price: 100.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 19,
    user: User(name: "Lucy Thomas", email: "lucythomas@example.com"),
    name: "Fendeuse de bûches",
    description: "Fendeuse de bûches pour le bois de chauffage",
    status: "Disponible",
    rate: 4.5,
    price: 140.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  Engin(
    id: 20,
    user: User(name: "Benjamin Wilson", email: "benjaminwilson@example.com"),
    name: "Désherbeur thermique",
    description: "Désherbeur thermique pour éliminer les mauvaises herbes",
    status: "Disponible",
    rate: 4.2,
    price: 80.0,
    images: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
];
