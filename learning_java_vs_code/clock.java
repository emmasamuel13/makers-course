package learning_java_vs_code;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

class Clock {
  public static void main(String[] args) {
    LocalDateTime now = LocalDateTime.now();
    DateTimeFormatter formatting = DateTimeFormatter.ofPattern("HH:mm");

    String formatted = now.format(formatting);
    System.out.printf("The current time is %s \n", formatted);
  }
}
