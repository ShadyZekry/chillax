abstract class UsernameEvent {}

class UsernameEntered extends UsernameEvent {
  final String username;
  UsernameEntered(this.username);
}
