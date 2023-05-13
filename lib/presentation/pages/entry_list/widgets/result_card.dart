import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entries/entry.dart';
import '../../../../utils/extensions.dart';
import '../../../router/router.gr.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key, required this.entry});
  final Entry entry;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(EntryRoute(entry: entry)),
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        height: 100,
        child: Card(
          clipBehavior: Clip.hardEdge,
          color: context.colors.surface,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(231, 252, 250, 250),
                width: 120,
                height: double.infinity,
                child: Center(
                  child: Text(
                    entry.date.value.fold(
                        (l) => '', (r) => DateFormat('dd MMM\nyyyy').format(r)),
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  entry.title.value.fold((l) => '', (r) => r),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Entry>('entry', entry));
  }
}
