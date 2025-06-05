import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/dr_personal_info.dart';

part 'new_client_state.dart';

class NewClientCubit extends Cubit<NewClientState> {
  NewClientCubit() : super(NewClientState.initial());

  static NewClientCubit get(context) => BlocProvider.of(context);

  final PageController controller = PageController();

  final List<Widget> pages = [
    DrPersonalInformation(),
    DrPersonalInformation(),
    DrPersonalInformation(),
    DrPersonalInformation(),
  ];

  void goToPage(int index) {
    if (index >= 0 && index < pages.length) {
      emit(state.copyWith(currentPage: index));
    }
  }

  void nextPage() {
    final nextIndex = state.currentPage + 1;
    if (nextIndex < pages.length) {
      emit(state.copyWith(currentPage: nextIndex));
    }
  }

  void previousPage() {
    final prevIndex = state.currentPage - 1;
    if (prevIndex >= 0) {
      emit(state.copyWith(currentPage: prevIndex));
    }
  }
}
