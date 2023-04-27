import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            titleSpacing: 0.1,
            title: Text('Placeholder'),
            floating: true,
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ListTile(
                title: Text('Placeholder'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
