package org.sso.code;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Arrays;
import java.util.UUID;

@SpringBootTest
class SSOApplicationTests {

    @Test
    void contextLoads() {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        for (int i = 0; i < 10; i++) {
            System.out.println(encoder.encode("123"));
        }


        for (int i = 0; i < 12; i++) {
            UUID u = UUID.randomUUID();
            System.out.println(u);
        }
    }
}
