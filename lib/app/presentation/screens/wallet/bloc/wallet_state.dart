part of 'wallet_bloc.dart';

@freezed
class WalletState extends BaseBlocState with _$WalletState {
  factory WalletState({
    BlocAction? action,
    @Default([]) List<Users> usersList,
    @Default([]) List<TransactionsEntity> transactions,
  }) = _WalletState;
}
