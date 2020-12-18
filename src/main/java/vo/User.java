package vo;

public class User {
    private Integer ID;
    private String passWord;
    private int state;
    private String balance;
    private String name;

    @Override
    public String toString() {
        return "User{" +
                "ID=" + ID +
                ", passWord='" + passWord + '\'' +
                ", state=" + state +
                ", balance='" + balance + '\'' +
                ", name='" + name + '\'' +
                '}';
    }

    public User(int ID, String passWord, String name) {
        this.ID = ID;
        this.passWord = passWord;
        this.name = name;
    }

    public User() {
    }

    public Integer getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
