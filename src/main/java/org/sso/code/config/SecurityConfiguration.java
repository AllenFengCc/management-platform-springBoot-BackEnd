package org.sso.code.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.authentication.*;
import org.springframework.security.config.annotation.ObjectPostProcessor;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.sso.code.mapper.LoginUserMapper;
import org.sso.code.model.LoginUser;
import org.sso.code.model.RespBean;
import org.sso.code.service.LoginUserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    @Autowired
    LoginUserService loginUserService;
    @Autowired
    Accession accession;
    @Autowired
    SecurityFilterInvocation securityFilterInvocation;
    @Autowired
    LoginUserMapper loginUserMapper;
//    @Autowired
//    RedisTemplate redisTemplate;
    //用户配置
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//                .withUser("root").password("$2a$10$veZni1A3hgc4YXs5hwdZZ.P2S43DICXC97.EKxDNtfUa8SSXO5ZqS").roles("admin")
//                .and()
//                .withUser("Allen").password("$2a$10$I.jrqaRfK7EUId2s.2wSRO5OrC7H2CBLEkqQpkyH/EzU09wqt5v12").roles("user").accountExpired(true)
//                .and()
//                .withUser("Cat").password("$2a$10$I.jrqaRfK7EUId2s.2wSRO5OrC7H2CBLEkqQpkyH/EzU09wqt5v12").roles("dba");
        auth.userDetailsService(loginUserService);
    }

    @Bean
    PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    //忽略的接口
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/hello").antMatchers("/loginHint");
    }

    //权限配置
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
//                .antMatchers("/admin/**").hasRole("admin")
//                .antMatchers("/user/**").hasAnyRole("admin,user")
//                .anyRequest().authenticated()
                .withObjectPostProcessor(new ObjectPostProcessor<FilterSecurityInterceptor>() {
                    @Override
                    public <O extends FilterSecurityInterceptor> O postProcess(O o) {
                        o.setSecurityMetadataSource(securityFilterInvocation);
                        o.setAccessDecisionManager(accession);
                        return o;
                    }
                })
                .and()
                .formLogin()
                .loginPage("/loginHint") //未登录响应接口
                .loginProcessingUrl("/doLogin")
                .usernameParameter("username")
                .passwordParameter("password")

                .successHandler(new AuthenticationSuccessHandler() {
                    @Override
                    public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication authentication) throws IOException, ServletException {
                        resp.setCharacterEncoding("utf-8");
                        resp.setContentType("application/json;charset=utf-8");

                        //获取登陆者信息
//                        Object obj = authentication.getPrincipal();
//                        RespBean respBean = RespBean.success(200,"Login Success", obj);
                        LoginUser loginUser = ((LoginUser) authentication.getPrincipal());

//                        Cookie cookie = new Cookie(RedisConstants.TOKEN_PREFIX+"_"+loginUser.getUsername(),loginUser.getTicket());
//                        resp.addCookie(cookie);
//                        System.out.println("============cookie.getName()================");
//                        System.out.println(cookie.getName());
//                        System.out.println("============cookie.getValue()================");
//                        System.out.println(cookie.getValue());


                        loginUserMapper.addRecord(loginUser.getUsername(),loginUser.getNickname());

                        loginUser.setPassword(null);
                        RespBean respBean = RespBean.success(200,"Login Success", loginUser);
                        resp.getWriter().println(new ObjectMapper().writeValueAsString(respBean));
                    }
                })

                .failureHandler(new AuthenticationFailureHandler() {
                    @Override
                    public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse resp, AuthenticationException e) throws IOException, ServletException {
                        resp.setCharacterEncoding("utf-8");
                        resp.setContentType("application/json;charset=utf-8");
                        RespBean respBean = null;
                        if (e instanceof BadCredentialsException) {
                            respBean = RespBean.error(500, "Username or Password is incorrect, please confirm again");
                        } else if (e instanceof LockedException) {
                            respBean = RespBean.error(500, "Account is locked, please contact manager");
                        } else if (e instanceof DisabledException) {
                            respBean = RespBean.error(500, "Account is disabled, please contact manager");
                        } else if (e instanceof CredentialsExpiredException) {
                            respBean = RespBean.error(500, "Password is expired, please contact manager");
                        } else if (e instanceof AccountExpiredException) {
                            respBean = RespBean.error(500, "Account is expired, please contact manager");
                        }else {
                            respBean = RespBean.error(500, "Unknow error, please contact manager");
                        }
                        resp.getWriter().println(new ObjectMapper().writeValueAsString(respBean));
                    }
                })

                .permitAll()
                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessHandler(new LogoutSuccessHandler() {
                    @Override
                    public void onLogoutSuccess(HttpServletRequest req, HttpServletResponse resp, Authentication authentication) throws IOException, ServletException {
                        resp.setCharacterEncoding("utf-8");
                        resp.setContentType("application/json;charset=utf-8");
                        RespBean respBean = RespBean.success(200, "Logout Success");
                        resp.getWriter().println(new ObjectMapper().writeValueAsString(respBean));
                    }
                })

                .permitAll()
                .and()
                .csrf().disable(); //防止csrf跨域攻击
    }
}
