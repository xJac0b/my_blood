// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:my_blood/presentation/pages/fill_data/fill_data_page.dart'
    as _i7;
import 'package:my_blood/presentation/pages/home/home_page.dart' as _i1;
import 'package:my_blood/presentation/pages/login/login_page.dart' as _i5;
import 'package:my_blood/presentation/pages/new_entry/new_entry_page.dart'
    as _i2;
import 'package:my_blood/presentation/pages/progress/progress_page.dart' as _i3;
import 'package:my_blood/presentation/pages/register/register_page.dart' as _i6;
import 'package:my_blood/presentation/pages/reset_password/reset_password_page.dart'
    as _i9;
import 'package:my_blood/presentation/pages/result_list/result_list_page.dart'
    as _i4;
import 'package:my_blood/presentation/pages/verification/verification_page.dart'
    as _i8;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    NewEntryRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NewEntryPage(),
      );
    },
    ProgressRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProgressPage(),
      );
    },
    ResultListRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ResultListPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RegisterPage(),
      );
    },
    FillDataRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.FillDataPage(),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.VerificationPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ResetPasswordPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewEntryPage]
class NewEntryRoute extends _i10.PageRouteInfo<void> {
  const NewEntryRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NewEntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewEntryRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProgressPage]
class ProgressRoute extends _i10.PageRouteInfo<void> {
  const ProgressRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProgressRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgressRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ResultListPage]
class ResultListRoute extends _i10.PageRouteInfo<void> {
  const ResultListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ResultListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResultListRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RegisterPage]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute({List<_i10.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.FillDataPage]
class FillDataRoute extends _i10.PageRouteInfo<void> {
  const FillDataRoute({List<_i10.PageRouteInfo>? children})
      : super(
          FillDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'FillDataRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.VerificationPage]
class VerificationRoute extends _i10.PageRouteInfo<void> {
  const VerificationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ResetPasswordPage]
class ResetPasswordRoute extends _i10.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
