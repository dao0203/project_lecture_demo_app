import 'package:flutter/material.dart';
import 'package:project_lecture_demo_app/domain/merchandise.dart';
import 'package:project_lecture_demo_app/repository/merchandise_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MerchandiseRepositoryImpl implements MerchandiseRepository {
  final _client = Supabase.instance.client;

  @override
  Future<Merchandise> getMerchandise(int id) async {
    return await _client
        .from('merchandises')
        .select()
        .eq('id', id)
        .then((value) {
      return Merchandise.fromJson(value.first);
    });
  }

  @override
  Future<List<Merchandise>> getMerchandises() async {
    return await _client
        .from('merchandises')
        .select()
        .eq('user_id', _client.auth.currentUser!.id)
        .then((value) {
      debugPrint(value.toString());
      return value.map((e) => Merchandise.fromJson(e)).toList();
    });
  }
}
