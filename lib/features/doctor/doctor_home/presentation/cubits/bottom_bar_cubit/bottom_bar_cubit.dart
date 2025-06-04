import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/user_bottom_bar_item.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial());
  static BottomBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  var titles = UserBottomNavigation.titles;

  var pages = UserBottomNavigation.itemsBody;

  void onTabTapped(int index) {
    currentIndex = index;
    emit(BottomBarTapped());
  }
}
