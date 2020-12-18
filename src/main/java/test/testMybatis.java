package test;


import org.apache.logging.log4j.LogManager;

import org.apache.logging.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mybatis.xml"})
public class testMybatis {
//    private static Logger log= LogManager.getLogger(Test.class.getName());
//
//    @Autowired
//    private IUserService userService;
//    @Test
//    public void test1(){
//        log.info("查询结果："+userService.get("user1").toString());
//    }
}
