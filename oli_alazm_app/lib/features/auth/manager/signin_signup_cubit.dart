import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signin_signup_state.dart';

class SigninSignupCubit extends Cubit<SigninSignupState> {
  SigninSignupCubit() : super(SigninSignupInitial());
}
