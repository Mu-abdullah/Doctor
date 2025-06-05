import 'package:flutter/material.dart';

import '../cubits/new_client_cubit/new_client_cubit.dart';
import '../widgets/new_client_indecator.dart';

class NewClientScreenBody extends StatelessWidget {
  const NewClientScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = NewClientCubit.get(context);
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: cubit.controller,
            itemCount: cubit.pages.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => cubit.pages[index],
          ),
        ),
        const NewClientPageIndicator(),
      ],
    );
  }
}
