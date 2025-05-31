import 'package:flutter/material.dart';

import '../../features/doctor/doctor_home/presentation/views/doctor_home.dart';
import '../../features/doctor/doctor_profile_page/presentation/views/doctor_profile_page.dart';
import '../../features/doctor/doctor_search_screen/presentation/views/doctor_search_screen.dart';
import '../app/image/image_preview.dart';
import '../app/language/language_screen.dart';
import '../app/no_internet/no_internet_screen.dart';
import 'base_routes.dart';
import 'routes_name.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  final args = settings.arguments as Map<String, dynamic>?;

  switch (settings.name) {
    ///////// basic routes
    case RoutesNames.imagePreview:
      return BaseRoute(
        page: PreviewImage(
          imageUrl: args?['imageUrl'] as String?,
          title: args?['title'] as String?,
          imagesList:
              (args?['imagesList'] as List?)?.whereType<String>().toList(),
        ),
      );

    case RoutesNames.language:
      return BaseRoute(page: LanguageScreen());

    case RoutesNames.noInternet:
      return BaseRoute(page: NoInternetScreen());

    /////////
    /////////doctor feature routes////////////
    /////////

    case RoutesNames.doctorHome:
      return BaseRoute(page: const DoctorHomeScreen());

    case RoutesNames.doctorSearch:
      return BaseRoute(
        page: DoctorSearchScreen(searchQuery: args?['searchQuery'] as String?),
      );

    case RoutesNames.doctorProfile:
      return BaseRoute(page: DoctorProfilePage());

    /////////
    /////////user feature routes////////////
    /////////

    default:
      return BaseRoute(page: const MaterialApp());
  }
}
