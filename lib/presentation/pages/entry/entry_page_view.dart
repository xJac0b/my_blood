import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/entries/entry/entry_bloc.dart';
import '../../../domain/entries/constants/units.dart';
import '../../../domain/entries/entry.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/text/headline_small.dart';
import '../../core/widgets/text/label_large.dart';
import '../../router/router.gr.dart';
import '../entry_form/widgets/app_bar_icons/back_arrow_icon.dart';

class EntryFormPageView extends StatelessWidget {
  const EntryFormPageView({super.key, required this.entry});
  final Entry entry;
  @override
  Widget build(BuildContext context) {
    return BlocListener<EntryBloc, EntryState>(
      listener: (context, state) {
        state.maybeMap(
          deletionSuccess: (_) => context.router.pop(),
          orElse: () => null,
        );
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
            title: entry.title.value.fold((l) => '', (r) => r),
            leading: const BackArrowIcon(),
            actions: [
              IconButton(
                  onPressed: () {
                    context.router.replace(EntryFormRoute(entry: entry));
                  },
                  icon: const Icon(Icons.edit)),
              IconButton(
                  onPressed: () =>
                      context.read<EntryBloc>().add(EntryEvent.deleted(entry)),
                  icon: const Icon(Icons.delete)),
            ],
          ),
          body: SingleChildScrollView(
            child: DefaultPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Card(
                      child: DefaultPadding(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.calendar_today, size: 50),
                            HeadlineSmall(
                              entry.date.value.fold((l) => '',
                                  (r) => DateFormat('dd MMM yyyy').format(r)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  for (var i in entry.results.results.entries)
                    Column(
                      children: [
                        Center(child: HeadlineSmall(i.key.tr())),
                        for (var j in i.value.entries)
                          SizedBox(
                            height: 100,
                            child: Card(
                                color: Colors.white,
                                child: DefaultPadding(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      LabelLarge(
                                        '${j.key} (${units[j.value.unitIndex]})',
                                        color: Colors.black,
                                      ),
                                      LabelLarge('${j.value.value}',
                                          color: Colors.black),
                                    ],
                                  ),
                                )),
                          )
                      ],
                    )
                ],
              ),
            ),
          )),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Entry>('entry', entry));
  }
}
