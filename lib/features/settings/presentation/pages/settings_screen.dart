import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/app_dimens.dart';
import 'package:weather_app/features/settings/presentation/blocs/cubit/theme_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(

        ),
        body: Padding(
          padding: const EdgeInsets.all(AppDimens.PADDING_20),
          child: BlocBuilder<ThemeCubit, ThemeData>(
            builder: (context, state) {
              final cubit = context.read<ThemeCubit>();
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.dark_mode,
                      size: 40,
                    ),
                    trailing: Switch(
                      value: state.brightness == Brightness.dark,
                      onChanged: (value) {
                        cubit.changeTheme(value ? Brightness.dark : Brightness.light);
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
