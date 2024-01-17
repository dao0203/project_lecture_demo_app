import 'package:project_lecture_demo_app/domain/merchandise.dart';
import 'package:project_lecture_demo_app/repository/di/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'merchandise_list_state.g.dart';

@riverpod
class MerchandiseListState extends _$MerchandiseListState {
  @override
  Future<List<Merchandise>> build() async {
    return await ref.watch(merchandiseRepositoryProvider).getMerchandises();
  }
}
