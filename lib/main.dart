import 'package:anime_list/features/anime/data/repository/anime_repository_impl.dart';
import 'package:anime_list/features/anime/data/remote_data_source.dart';
import 'package:anime_list/features/anime/presentation/pages/anime_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimeListPage(),
    );
  }
}
