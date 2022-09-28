import 'package:flutter/material.dart';
import 'package:reddit_feeling/app/modules/home/widgets/data_grid_view_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: CustomDataGridView(),
      ),
    );
  }
}
