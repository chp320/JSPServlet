public class Adder {
    public static void main(String args[]) {
        try {
            int num1 = Integer.parseInt(args[0]) ;
            int num2 = Integer.parseInt(args[1]) ;
            int result = num1 + num2 ;
            System.out.printf("%d + %d = %d", num1, num2, result) ;
        }
        catch (NumberFormatException e) {
            // System.out.println("잘못된 데이터가 입력되었습니다.") ;
            System.out.println("Error: Input wrong data.") ;
        }
    }
}