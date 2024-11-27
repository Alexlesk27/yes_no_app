enum FromWhon { me, hers }

class Messagem {
  final String text;
  final String? imageUrl;
  final FromWhon fromWhon;

  Messagem({
    required this.text,
    this.imageUrl,
    required this.fromWhon,
  });
}
