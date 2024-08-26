class AppUser {
  final String uid;
  final String? username;
  final bool isAnonymous;

  AppUser({
    required this.uid,
    this.username,
    required this.isAnonymous,
  });
}
