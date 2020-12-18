package service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import vo.User;


public interface IUserService {
    //登录验证
    int loginCheck(User user);
    //账户锁定
    int lockUser(User user);
    //存款
    int deposit(int ID,int money);
    //取款
    int withDraw(int ID,int money);
    //转账
    int transferMoney(int ID,int userInId,int money);
    //查询
    User queryUserById(int id);
    //改密
    int updatePassWord(User user);
}
