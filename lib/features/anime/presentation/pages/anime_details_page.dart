import 'package:anime_list/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../data/models/anime.dart';

class AnimeDetailsPage extends StatelessWidget {
  const AnimeDetailsPage({
    super.key,
    required this.anime,
  });

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCoverImageComponent(),
          const SizedBox(height: 10),
          _buildHeadingComponent(context),
          const SizedBox(height: 20),
          _buildDescriptionComponent(context),
        ],
      ),
    );
  }

  Widget _buildCoverImageComponent() {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Image.network(
        anime.attributes.posterImage.original,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildHeadingComponent(BuildContext context) {
    final date = anime.attributes.createdAt;
    final formattedDate = Utils.getFormattedDate(date);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          anime.attributes.titles.englishTitle,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text('$formattedDate - ⭐ ${anime.attributes.averageRating}')
      ],
    );
  }

  Widget _buildDescriptionComponent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Synopsis',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text(anime.attributes.synopsis,  style: Theme.of(context)
              .textTheme
              .bodyLarge,),
          const SizedBox(height: 30),
          Text(
            'Description',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text(anime.attributes.description,  style: Theme.of(context)
              .textTheme
              .bodyLarge,)
        ],
      ),
    );
  }
}
