package org.sso.code.config;

import org.sso.code.configConstants.RedisConstants;
import org.sso.code.model.LoginUser;

public class TicketUtil {

    public static String getTicket(LoginUser loginUser) {
        String ticket = RedisConstants.TOKEN_PREFIX+"_"+ loginUser.getId()+"_"+ loginUser.getPassword();
        return ticket;
    }
}
