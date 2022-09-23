import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qclay/app/presentation/widgets/app_bars/header.dart';
import 'package:qclay/app/presentation/widgets/buttons/header_button.dart';
import 'package:qclay/app/presentation/widgets/others/balance_card.dart';
import 'package:qclay/app/presentation/widgets/others/frequet_transactions.dart';
import 'package:qclay/app/presentation/widgets/others/transactions.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:qclay/core/ui/widgets/base_bloc_listener.dart';
import 'package:qclay/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:qclay/gen/assets.gen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'bloc/wallet_bloc.dart';

class WalletScreen extends StatefulWidget {
  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends BaseBlocStateWidget<WalletScreen, WalletBloc, WalletEvent> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<WalletBloc, WalletState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state, action) async {},
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: mediaQuery.size.height),
          child: ScrollConfiguration(
            behavior: const DisableGrowEffectScrollBehavior(),
            child: Stack(
              children: [
                Positioned.fill(
                  right: 50,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 190,
                      width: 190,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            spreadRadius: 1,
                            color: AppColors.red.withOpacity(0.1),
                          )
                        ]
                      ),
                    ),
                  ),
                ),
                CustomScrollView(
                  physics: const ClampingScrollPhysics(),
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const SizedBox(height: 32),
                          _buildHeader(),
                          const SizedBox(height: 30),
                          _buildBalanceCard(),
                          const SizedBox(height: 30),
                          _buildFrequentTransactions(),
                          const SizedBox(height: 30),
                          _buildTransactions(),
                        ],
                      ),
                    ),
                    SliverPadding(padding: EdgeInsets.only(bottom: 50))
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildHeader() => HeaderWidget(
        header: "HeIIo Bradly",
        subHeader: "You earned \$892.20 for this month",
        rightIcons: _buildHeaderButton(),
      );

  Widget _buildHeaderButton() => HeaderButton(
        onPressed: () {},
      );

  Widget _buildBalanceCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: BalanceCard(
          balance: "0.32213",
          inDollar: "281.3",
        ),
      );

  Widget _buildFrequentTransactions() => BlocBuilder<WalletBloc, WalletState>(
        buildWhen: (previous, current) => previous.usersList != current.usersList,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Frequent Transactions",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor2,
                  ),
                ),
                SizedBox(height: 20),
                FrequentTransactions(usersList: state.usersList),
              ],
            ),
          );
        },
      );

  Widget _buildTransactions() => BlocBuilder<WalletBloc, WalletState>(
        buildWhen: (previous, current) => previous.transactions != current.transactions,
        builder: (context, state) {
          return Column(
            children: [
              Container(
                height: 6,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.black1,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: 10),
              Transactions(transactions: state.transactions),
            ],
          );
        },
      );
}
