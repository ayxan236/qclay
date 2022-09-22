import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qclay/core/ui/widgets/base_bloc_listener.dart';
import 'package:qclay/core/ui/widgets/base_bloc_state_widget.dart';

import 'bloc/buy_bloc.dart';

class BuyScreen extends StatefulWidget {
  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends BaseBlocStateWidget<BuyScreen, BuyBloc, BuyEvent> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<BuyBloc, BuyState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {},
        child: Container(),
      );

}