import 'package:challenge/src/presentation/home_view/widgets/province_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_providers.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final term = useState('');
    final filteredResult = ref.watch(filteredProvinceProvider(term.value));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'جستجو',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) => term.value = value,
            decoration: const InputDecoration(
              hintText: 'شهر',
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredResult.length,
              itemBuilder: (BuildContext context, int index) =>
                  ProvinceItem(province: filteredResult[index]),
            ),
          ),
        ],
      ),
    );
  }
}
