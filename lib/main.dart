import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/viewModel/albumViewModel.dart';
import 'package:provider_project/view/albumView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AlbumViewModel>(
        create: (context) => AlbumViewModel(),
        child: const AlbumView(),
      ),
    );
  }
}