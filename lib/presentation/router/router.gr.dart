// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:my_blood/presentation/pages/home_page/home_page.dart' as _i1;
import 'package:my_blood/presentation/pages/new_entry_page/new_entry_page.dart'
    as _i2;
import 'package:my_blood/presentation/pages/result_list_page/result_list_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    NewEntryRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NewEntryPage(),
      );
    },
    ResultListRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ResultListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewEntryPage]
class NewEntryRoute extends _i4.PageRouteInfo<void> {
  const NewEntryRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NewEntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewEntryRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ResultListPage]
class ResultListRoute extends _i4.PageRouteInfo<void> {
  const ResultListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ResultListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResultListRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
