// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/foundation.dart' as _i12;
import 'package:my_blood/domain/entries/entry.dart' as _i13;
import 'package:my_blood/presentation/pages/entry/entry_page.dart' as _i9;
import 'package:my_blood/presentation/pages/entry_form/entry_form_page.dart'
    as _i7;
import 'package:my_blood/presentation/pages/entry_list/entry_list_page.dart'
    as _i8;
import 'package:my_blood/presentation/pages/fill_data/fill_data_page.dart'
    as _i4;
import 'package:my_blood/presentation/pages/home/home_page.dart' as _i1;
import 'package:my_blood/presentation/pages/login/login_page.dart' as _i2;
import 'package:my_blood/presentation/pages/register/register_page.dart' as _i3;
import 'package:my_blood/presentation/pages/reset_password/reset_password_page.dart'
    as _i6;
import 'package:my_blood/presentation/pages/user/user_page.dart' as _i10;
import 'package:my_blood/presentation/pages/verification/verification_page.dart'
    as _i5;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    FillDataRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FillDataPage(),
      );
    },
    VerificationRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.VerificationPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ResetPasswordPage(),
      );
    },
    EntryFormRoute.name: (routeData) {
      final args = routeData.argsAs<EntryFormRouteArgs>(
          orElse: () => const EntryFormRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.EntryFormPage(
          key: args.key,
          entry: args.entry,
        ),
      );
    },
    EntryListRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.EntryListPage(),
      );
    },
    EntryRoute.name: (routeData) {
      final args = routeData.argsAs<EntryRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.EntryPage(
          key: args.key,
          entry: args.entry,
        ),
      );
    },
    UserRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UserPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FillDataPage]
class FillDataRoute extends _i11.PageRouteInfo<void> {
  const FillDataRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FillDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'FillDataRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.VerificationPage]
class VerificationRoute extends _i11.PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    _i12.Key? key,
    required String email,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i11.PageInfo<VerificationRouteArgs> page =
      _i11.PageInfo<VerificationRouteArgs>(name);
}

class VerificationRouteArgs {
  const VerificationRouteArgs({
    this.key,
    required this.email,
  });

  final _i12.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerificationRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i6.ResetPasswordPage]
class ResetPasswordRoute extends _i11.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EntryFormPage]
class EntryFormRoute extends _i11.PageRouteInfo<EntryFormRouteArgs> {
  EntryFormRoute({
    _i12.Key? key,
    _i13.Entry? entry,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          EntryFormRoute.name,
          args: EntryFormRouteArgs(
            key: key,
            entry: entry,
          ),
          initialChildren: children,
        );

  static const String name = 'EntryFormRoute';

  static const _i11.PageInfo<EntryFormRouteArgs> page =
      _i11.PageInfo<EntryFormRouteArgs>(name);
}

class EntryFormRouteArgs {
  const EntryFormRouteArgs({
    this.key,
    this.entry,
  });

  final _i12.Key? key;

  final _i13.Entry? entry;

  @override
  String toString() {
    return 'EntryFormRouteArgs{key: $key, entry: $entry}';
  }
}

/// generated route for
/// [_i8.EntryListPage]
class EntryListRoute extends _i11.PageRouteInfo<void> {
  const EntryListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EntryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EntryListRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.EntryPage]
class EntryRoute extends _i11.PageRouteInfo<EntryRouteArgs> {
  EntryRoute({
    _i12.Key? key,
    required _i13.Entry entry,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          EntryRoute.name,
          args: EntryRouteArgs(
            key: key,
            entry: entry,
          ),
          initialChildren: children,
        );

  static const String name = 'EntryRoute';

  static const _i11.PageInfo<EntryRouteArgs> page =
      _i11.PageInfo<EntryRouteArgs>(name);
}

class EntryRouteArgs {
  const EntryRouteArgs({
    this.key,
    required this.entry,
  });

  final _i12.Key? key;

  final _i13.Entry entry;

  @override
  String toString() {
    return 'EntryRouteArgs{key: $key, entry: $entry}';
  }
}

/// generated route for
/// [_i10.UserPage]
class UserRoute extends _i11.PageRouteInfo<void> {
  const UserRoute({List<_i11.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
