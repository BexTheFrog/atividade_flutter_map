class LocalizadorModel {
  final String nome;
  final String endereco;
  final String descricao;
  final double latitude;
  final double longitude;

  LocalizadorModel({
    required this.nome,
    required this.descricao,
    required this.latitude,
    required this.longitude,
    required this.endereco,
  });
}
