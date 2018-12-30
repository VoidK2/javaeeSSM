package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

@Controller
public class queryController {
    @RequestMapping("/index")
    public String toqueryClient(){
        return "queryClientInfo";
    }
    @RequestMapping("queryClientInfo")
    public String query(){
        return "showQueryResult";
    }
}
