String getDayTime() {
  if (DateTime.now().hour <= 12) {
    return "Good Morning";
  } else if (DateTime.now().hour <= 16) {
    return "Good Afternoon";
  } else {
    return "Good Night";
  }
}
