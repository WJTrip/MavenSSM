package service.impl;


import dao.IUserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import service.IUserService;
import vo.User;


@Service
public class UserServiceImpl implements IUserService {

    //service调DAO层：组合DAO
    private IUserDAO userDAO;
    @Autowired
    public void setUserDAO(IUserDAO userDAO) {
        this.userDAO = userDAO;
    }


    @Override
    public int loginCheck(User user) {
        return userDAO.loginCheck(user);
    }

    @Override
    public int lockUser(User user) {
        return userDAO.lockUser(user);
    }

    @Override
    public int deposit(int ID,int money) {
        return userDAO.deposit(ID,money);
    }

    @Override
    public int withDraw(int ID,int money) {
        return userDAO.withDraw(ID,money);
    }

    @Override
    public int transferMoney(int ID, int userInId, int money) {
        userDAO.deposit(userInId,money);
        userDAO.withDraw(ID,money);
        return 1;
    }

    @Override
    public User queryUserById(int id) {
        return userDAO.queryUserById(id);
    }

    @Override
    public int updatePassWord(User user) {
        return userDAO.updatePassWord(user);
    }


}