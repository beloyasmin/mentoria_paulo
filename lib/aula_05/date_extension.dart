extension DateExtension on DateTime {
  String formatarDataNascimento() {
    return "${day.toString().padLeft(2, "0")} - ${month.toString().padLeft(2, "0")} - $year";
  }
}
