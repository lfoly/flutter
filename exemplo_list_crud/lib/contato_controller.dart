import 'contato.dart';

class ContatoController {
  static List<Contato> lista = [];

  static incluir(Contato c) {
    lista.add(c);
  }

  static editar(int index, Contato c) {
    lista[index] = c;
  }

  static excluir(Contato c) {
    lista.remove(c);
  }

  static List<Contato> listar() {
    return lista;
  }
}
