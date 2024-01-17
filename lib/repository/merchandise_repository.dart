import 'package:project_lecture_demo_app/domain/merchandise.dart';

abstract interface class MerchandiseRepository {
  Future<List<Merchandise>> getMerchandises();
  Future<Merchandise> getMerchandise(int id);
}
