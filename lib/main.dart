import 'package:anime_list/features/anime/data/anime_repository.dart';
import 'package:anime_list/features/anime/data/remote_data_source.dart';
import 'package:anime_list/features/anime/presentation/pages/anime_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final RemoteDataSource remoteDataSource = RemoteDataSource();
final AnimeRepository animeRepository = AnimeRepository(remoteDataSource);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimeListPage(animeRepository: animeRepository),
    );
  }
}
