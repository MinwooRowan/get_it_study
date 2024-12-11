import 'package:flutter/material.dart';

import 'package:get_it_study/presentation/screen/home/viewmodel/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.viewmodel,
  });
  final HomeViewmodel viewmodel;
  static const String route = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListenableBuilder(
            listenable: viewmodel,
            builder: (BuildContext context, Widget? child) {
              return viewmodel.getUserList.running
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        Text('LENGTH : ${viewmodel.userList.length}'),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: viewmodel.userList.map((String name) {
                            return Text(
                              name,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            );
                          }).toList(),
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
