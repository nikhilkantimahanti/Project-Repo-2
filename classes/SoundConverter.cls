public class SoundConverter {

    // Convert decibels to bels
    public static Decimal decibelsToBels(Decimal decibels) {
        return decibels / 10;
    }

    // Convert bels to decibels
    public static Decimal belsToDecibels(Decimal bels) {
        return bels * 10;
    }

    // Convert decibels to neper
    public static Decimal decibelsToNeper(Decimal decibels) {
        return decibels * (1 / 8.686);
    }

    // Convert neper to decibels
    public static Decimal neperToDecibels(Decimal neper) {
        return neper * 8.686;
    }
}