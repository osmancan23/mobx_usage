import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../core/base/base_widget.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  late HomeViewModel _homeViewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        _homeViewModel = model;
      },
      onPageBuilder: (context, value) => Scaffold(
        body: _buildBody,
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () => _homeViewModel.increment(),
      child: const Icon(Icons.add),
    );
  }

  Widget get _buildBody => Observer(
        builder: (builder) => Center(
          child: Text(
            _homeViewModel.number.toString(),
          ),
        ),
      );
}
