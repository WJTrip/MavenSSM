package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import service.IUserService;
import vo.User;


import java.util.HashMap;
import java.util.Map;


@Controller
public class UserController {
    //controller层调service层
    @Qualifier("userServiceImpl")
    @Autowired
    private IUserService userService;

    //登录
    @RequestMapping(value = "/loginCheck",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> loginCheck(@RequestParam("inputID") int inputID,@RequestParam("inputPassWord") String inputPassWord){
        //存放返回信息的Map
        Map<String,Object> map=new HashMap<String, Object>();

        User user1=userService.queryUserById(inputID);
        if(user1==null){//用户不存在
            map.put("code",1);
            map.put("info","用户不存在！");
        }else if(user1.getState()!=1) {//账户被锁定
            map.put("code",2);
            map.put("info","账户被锁定！");
        }else if(!inputPassWord.equalsIgnoreCase(user1.getPassWord())){//密码不正确
            map.put("code",3);
            map.put("info","密码不正确！");
        }else{//密码正确
            map.put("code",0);
            map.put("info","success");
        }
        return map;
    }
    //查询用户信息，并且返回到一个展示页面
    @RequestMapping(value = "/queryUser",method = RequestMethod.GET)
    public String queryUser(int ID,Model model){
        User user=userService.queryUserById(ID);
        System.out.println("user=>"+user);
        model.addAttribute("user",user);
        return "queryUser";
    }

    //跳转到修改密码页面
    @RequestMapping(value = "/toUpdatePassWordJsp")
    public String toUpdatePassWord(int ID,Model model){
        User user = userService.queryUserById(ID);
        System.out.println("user=>"+ user);
        model.addAttribute("user", user);
        return "updatePassWord";
    }

    //修改密码
    @RequestMapping(value = "/updatePassWord")
    public String updatePassWord(User user){
        userService.updatePassWord(user);
        return "prompt";
    }

    //跳转到存款页面
    @RequestMapping(value = "/toDepositJsp")
    public String toDepositJsp(int ID,Model model){
        User user = userService.queryUserById(ID);
        System.out.println("user=>"+ user);
        model.addAttribute("user", user);
        return "deposit";
    }

    //存款
    @RequestMapping(value = "/deposit")
    public String deposit(int ID,int money,Model model){
        userService.deposit(ID,money);
        User user=userService.queryUserById(ID);
        System.out.println("user=>"+user+"money=>"+money);
        model.addAttribute(user);
        return "queryUser";
    }

    //跳转到取款页面
    @RequestMapping(value = "/toWithDrawJsp")
    public String toWithDrawJsp(int ID,Model model){
        User user = userService.queryUserById(ID);
        System.out.println("user=>"+ user);
        model.addAttribute("user", user);
        return "withDraw";
    }

    //取款
    @RequestMapping(value = "/withDraw")
    public String withDraw(int ID,int money,Model model){
        userService.withDraw(ID,money);
        User user=userService.queryUserById(ID);
        System.out.println("user=>"+user+"money=>"+money);
        model.addAttribute(user);
        return "queryUser";
    }

    //跳转到转账页面
    @RequestMapping(value = "/toTransferMoneyJsp")
    public String toTransferMoneyJsp(int ID,Model model){
        User user = userService.queryUserById(ID);
        System.out.println("user=>"+ user);
        model.addAttribute("user", user);
        return "transferMoney";
    }

    //转账
    @RequestMapping(value = "/transferMoney")
    public String transferMoney(@RequestParam(required = false,name = "ID") Integer ID,int inputID,int money,Model model){
        userService.deposit(inputID,money);
        userService.withDraw(ID,money);
        //userService.transferMoney(ID,inputID,money);
        User user=userService.queryUserById(ID);
        System.out.println("user=>"+user+"money=>"+money);
        model.addAttribute(user);
        return "queryUser";
    }

    //锁定账户
    @RequestMapping(value = "/lockUser")
    public String lockUser(int ID){
        User user=userService.queryUserById(ID);
        userService.lockUser(user);
        return "prompt";
    }


}
