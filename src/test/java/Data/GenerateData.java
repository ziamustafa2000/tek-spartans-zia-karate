package Data;

public class GenerateData {

    public static String getEmail() {
        int random = (int)(Math.random() * 100000000);
        return "zia" + random + "@hotmail.com";
    }
}