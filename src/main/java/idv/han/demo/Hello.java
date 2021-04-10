package idv.han.demo;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class Hello {
    
    /* 注入“服务提供者”的端口号 */
    // @Value("${provider.port}")
    @Value("${server.port}")
    private String port;

    @RequestMapping("/hello")
    public String hello()  throws Exception{
        return "Hello ,Spring Boot! port:" + port;
    }
}
