package org.sso.code.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.sso.code.config.TicketUtil;
import org.sso.code.configConstants.RedisConstants;
import org.sso.code.mapper.LoginUserMapper;
import org.sso.code.model.LoginUser;
import org.sso.code.model.RespBean;
import org.sso.code.model.Role;

import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
public class LoginUserService implements UserDetailsService {
    @Autowired
    LoginUserMapper loginUserMapper;
//    @Autowired
//    private RedisTemplate<String,String> redisTemplate;
    @Override
    @PostMapping("/")
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        LoginUser loginUser = loginUserMapper.loadUserByUsername(username);
        if(loginUser == null){
            throw new UsernameNotFoundException("LoginUser does not exist");
        }

//        UUID u = UUID.randomUUID();

//        Calendar calendar = Calendar.getInstance();
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyyyyHHmmss");
//        String t = simpleDateFormat.format(calendar.getTime());
//        String rKey = RedisConstants.TOKEN_PREFIX+"_"+ loginUser.getId()+"_"+ u;


//        String rTicket = TicketUtil.getTicket(loginUser);
//        ValueOperations str = redisTemplate.opsForValue();


//        str.set(
//                rKey, // Redis key 值
//                rTicket, // Redis Value 值
//                RedisConstants.TOKEN_EXPIRE,
//                TimeUnit.SECONDS
//        );
//        loginUser.setTicket(loginUser.getUsername());

//        System.out.println("++++++++++++++++++++++++");
//        System.out.println(str.get(rKey));

        List<Role> roles = loginUserMapper.getRolesById(loginUser.getId());
        loginUser.setRoles(roles);
//        loginUserMapper.addRecord(loginUser.getUsername());
        return loginUser;
    }
}
