class BadgeInfo {

}

class UserData {
  UserData.empty();

  UserData(
      this.username,
      this.email,
      this.badges,
  ) { empty = false; }

  bool empty = true;
  late String username;
  late String email;
  late List<BadgeInfo> badges;
}