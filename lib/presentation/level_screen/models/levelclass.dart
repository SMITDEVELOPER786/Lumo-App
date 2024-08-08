class Level {
  final int minLevel;
  final int maxLevel;
  final int perLevelXP;
  final int totalLevelXP;
  final String reward;

  Level({
    required this.minLevel,
    required this.maxLevel,
    required this.perLevelXP,
    required this.totalLevelXP,
    required this.reward,
  });
}
