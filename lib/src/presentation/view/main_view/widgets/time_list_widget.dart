import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../theming/app_theme.dart';
import '../../../../util/to_hours_minutes_seconds.dart';
import '../../../bloc/main_bloc/main_bloc.dart';

class TimeListWidget extends StatelessWidget {
  const TimeListWidget({Key? key, required this.itemExtend}) : super(key: key);
  final double itemExtend;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) {
        if (previous.timeEntryList!.length != current.timeEntryList!.length) {
          return true;
        } else {
          return false;
        }
      },
      builder: (context, state) {
        return Expanded(
          child: SizedBox(
            height: itemExtend * state.timeEntryList!.length,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemExtent: itemExtend,
              itemCount: state.timeEntryList!.length,
              itemBuilder: (context, index) => SizedBox(
                child: _timeEntryItem(
                    state.timeEntryList!.length - index,
                    state.timeEntryList![index].elapsedInSeconds!,
                    state.timeEntryList![index].entityId!),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _timeEntryItem(int index, int elapsedInSecond, int timeEntryId) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              context.read<MainBloc>().add(MainDeleteTimeEntryEvent(
                  timeEntryId: timeEntryId, timeEntryIndex: index));
            },
            backgroundColor: Colors.redAccent,
            icon: Icons.delete_forever,
          )
        ],
      ),
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              context.read<MainBloc>().add(MainDeleteTimeEntryEvent(
                  timeEntryId: timeEntryId, timeEntryIndex: index));
            },
            backgroundColor: Colors.redAccent,
            icon: Icons.delete_forever,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Divider(
              height: 4,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$index',
                  style: lightTheme.textTheme.headline5!
                      .copyWith(color: lightTheme.colorScheme.primary),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      toHoursMinutesSeconds(elapsedInSecond),
                      style: lightTheme.textTheme.headline4,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
