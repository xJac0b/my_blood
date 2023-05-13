// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_blood/application/auth/auth_bloc.dart' as _i13;
import 'package:my_blood/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i11;
import 'package:my_blood/application/auth/user/user_bloc.dart' as _i12;
import 'package:my_blood/application/entries/entry/entry_bloc.dart' as _i14;
import 'package:my_blood/application/entries/entry_form/entry_form_bloc.dart'
    as _i15;
import 'package:my_blood/application/entries/entry_list/entry_list_bloc.dart'
    as _i16;
import 'package:my_blood/domain/auth/i_auth_facade.dart' as _i7;
import 'package:my_blood/domain/entries/i_entry_repository.dart' as _i9;
import 'package:my_blood/infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'package:my_blood/infrastructure/core/firebase_injectable.module.dart'
    as _i17;
import 'package:my_blood/infrastructure/entries/entry_repository.dart' as _i10;
import 'package:my_blood/presentation/router/router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
          gh<_i5.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i9.IEntryRepository>(
        () => _i10.EntryRepository(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i11.SignInFormBloc>(
        () => _i11.SignInFormBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i12.UserBloc>(() => _i12.UserBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i14.EntryBloc>(
        () => _i14.EntryBloc(gh<_i9.IEntryRepository>()));
    gh.factory<_i15.EntryFormBloc>(
        () => _i15.EntryFormBloc(gh<_i9.IEntryRepository>()));
    gh.factory<_i16.EntryListBloc>(
        () => _i16.EntryListBloc(gh<_i9.IEntryRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
