part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentAuthLoadingStates extends PaymentState {}

class PaymentAuthSuccessStates extends PaymentState {}

class PaymentAuthErrorStates extends PaymentState {
  final String error;
  PaymentAuthErrorStates(this.error);
}
