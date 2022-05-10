import 'package:challenge/src/presentation/home_view/search_view.dart';
import 'package:challenge/src/presentation/home_view/widgets/province_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_providers.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeStateNotifierProvider);
    final provinces = state.provinces;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'شهر‌ها',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white, fontSize: 20.0),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchView()),
            ),
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: IndexedStack(
        index: state.isLoading ? 0 : 1,
        children: [
          const Center(child: CircularProgressIndicator()),
          ListView.separated(
            itemCount: provinces.length,
            itemBuilder: (BuildContext context, int index) =>
                ProvinceItem(province: provinces[index]),
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ],
      ),
    );
  }
}
