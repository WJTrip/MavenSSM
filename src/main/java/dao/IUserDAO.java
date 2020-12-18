package dao;


import org.apache.ibatis.annotations.Param;
import vo.User;


public interface IUserDAO {
    //登录验证
    int loginCheck(User user);
    //账户锁定
    int lockUser(User user);
    //存款
    int deposit(@Param("ID") int ID,@Param("money") int money);
    //取款
    int withDraw(@Param("ID") int ID,@Param("money") int money);
    //转账
    int transferMoney(@Param("ID") int ID,@Param("userInId")int userInId,@Param("money") int money);
    //查询
    User queryUserById(@Param("userId") int id);
    //改密
    int updatePassWord(User user);
}
