enum DestinationCategory {
  beach(name: 'Beach', path: 'lib/images/parasol.png'),
  mountains(name: 'Mountains', path: 'lib/images/mountain.png'),
  river(name: 'River', path: 'lib/images/river.png'),
  camping(name: 'Camping', path: 'lib/images/tent.png');

  const DestinationCategory({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}
