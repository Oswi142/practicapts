import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Eventos
abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class LogoutEvent extends AuthEvent {}

enum AuthStatus { authenticated, unauthenticated }

class AuthState extends Equatable {
  final AuthStatus status;

  AuthState(this.status);

  @override
  List<Object?> get props => [status];
}

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState(AuthStatus.unauthenticated));

  Future<void> login(String email, String password) async {
    await saveSession();
    emit(AuthState(AuthStatus.authenticated));
  }

  Future<void> saveSession() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isAuthenticated', true);
  }

  void logout() {
    // Limpiar cualquier información de sesión aquí
    emit(AuthState(AuthStatus.unauthenticated));
  }
}
