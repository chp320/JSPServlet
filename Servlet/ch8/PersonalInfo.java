package mall ;
public class PersonalInfo {
    private String name ;   // 이름
    private char gender ;   // 성별
    private int age ;       // 나이
    
    public void setName(String name) {
        this.name = name ;
    }
    public String getName() {
        return name ;
    }
    
    public void setGender(char gender) {
        this.gender = gender ;
    }
    public char getGender() {
        return gender ;
    }
    
    public void setAge(int age) {
        this.age = age ;
    }
    public int getAge() {
        return age ;
    }
}