// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/foundation.dart' as _i11;
import 'package:my_blood/presentation/pages/entry_form/entry_form_page.dart'
    as _i8;
import 'package:my_blood/presentation/pages/entry_list/entry_list_page.dart'
    as _i9;
import 'package:my_blood/presentation/pages/fill_data/fill_data_page.dart'
    as _i5;
import 'package:my_blood/presentation/pages/home/home_page.dart' as _i1;
import 'package:my_blood/presentation/pages/login/login_page.dart' as _i3;
import 'package:my_blood/presentation/pages/progress/progress_page.dart' as _i2;
import 'package:my_blood/presentation/pages/register/register_page.dart' as _i4;
import 'package:my_blood/presentation/pages/reset_password/reset_password_page.dart'
    as _i7;
import 'package:my_blood/presentation/pages/verification/verification_page.dart'
    as _i6;

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
    ProgressRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProgressPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterPage(),
      );
    },
    FillDataRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FillDataPage(),
      );
    },
    VerificationRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.VerificationPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ResetPasswordPage(),
      );
    },
    EntryFormRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.EntryFormPage(),
      );
    },
    EntryListRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.EntryListPage(),
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
/// [_i2.ProgressPage]
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
/// [_i3.LoginPage]
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
/// [_i4.RegisterPage]
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
/// [_i5.FillDataPage]
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
/// [_i6.VerificationPage]
class VerificationRoute extends _i10.PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    _i11.Key? key,
    required String email,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i10.PageInfo<VerificationRouteArgs> page =
      _i10.PageInfo<VerificationRouteArgs>(name);
}

class VerificationRouteArgs {
  const VerificationRouteArgs({
    this.key,
    required this.email,
  });

  final _i11.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerificationRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i7.ResetPasswordPage]
class ResetPasswordRoute extends _i10.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.EntryFormPage]
class EntryFormRoute extends _i10.PageRouteInfo<void> {
  const EntryFormRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EntryFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'EntryFormRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.EntryListPage]
class EntryListRoute extends _i10.PageRouteInfo<void> {
  const EntryListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EntryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EntryListRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
