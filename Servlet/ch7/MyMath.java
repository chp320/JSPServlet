package util ;
public class MyMath {
    public static int sum(int start, int end) {
        int sum = 0 ;
        for (int cnt = start; cnt <= end; cnt++) {
            System.out.println("cnt: "+cnt) ;
            sum += cnt ;
            System.out.println("sun: " + sum) ;
        }
        return sum ;
    }
}