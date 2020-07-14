package com.xiiv.springcloud.controller;

import com.xiiv.springcloud.common.pojo.Article;
import com.xiiv.springcloud.common.pojo.Phone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    @Autowired
    RestTemplate restTemplate;

    private static final String REST_URL_PREFIX = "http://MICROSERVICECLOUD-DEPT";

    @RequestMapping("/")
    public String idx(Model model) {
        List<Article> articleList = restTemplate.getForObject(REST_URL_PREFIX+"/art/list", List.class);
//        List<Map<String, Object>> articleList = restTemplate.getForObject(REST_URL_PREFIX+"/art/list", List.class);
        model.addAttribute("articles", articleList);

        List<Phone> temp = restTemplate.getForObject(REST_URL_PREFIX+"/phone/list", List.class);
        List<Phone> phones = new ArrayList<>();
//        List<Map<String, Object>> temp = restTemplate.getForObject(REST_URL_PREFIX+"/phone/list", List.class);
//        List<Map<String, Object>> phones = new ArrayList<>();
        int size = 0;
        while(size < 12 && size < temp.size()) {
            phones.add(temp.get(size++));
        }
        model.addAttribute("phones", phones);

        int c = restTemplate.getForObject(REST_URL_PREFIX+"/mvc", Integer.class);
        if(c == 1) return "index01";
        else return "index02";

//        return "index01";
    }

    @RequestMapping("login")
    public String login() {
        return "login";
    }

    @RequestMapping("register")
    public String register() {
        return "register";
    }

    @RequestMapping("add")
    public String add() {
        return "add";
    }

    /**
    @RequestMapping("/checkCode")
    public void check(final HttpServletResponse response) throws IOException {

//        response.setContentType("image/jpeg");
//        response.setCharacterEncoding("UTF-8");
//        OutputStream outputSream = response.getOutputStream();
//
//        InputStream in = new ByteArrayInputStream(data);
//        int len = 0;
//        byte[] buf = new byte[1024];
//        while ((len = in.read(buf, 0, 1024)) != -1) {
//            outputSream.write(buf, 0, len);
//        }
//        outputSream.close();

        //服务器通知浏览器不要缓存
        response.setHeader("pragma","no-cache");
        response.setHeader("cache-control","no-cache");
        response.setHeader("expires","0");

        //在内存中创建一个长80，宽30的图片，默认黑色背景
        //参数一：长
        //参数二：宽
        //参数三：颜色
        int width = 80;
        int height = 30;
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);

        Graphics g = image.getGraphics();
        g.setColor(Color.GRAY);
        g.fillRect(0,0, width,height);

        String checkCode = getCheckCode();

//        将验证码放入HttpSession中
//        request.getSession().setAttribute("CHECKCODE_SERVER",checkCode);

        g.setColor(Color.YELLOW);
        g.setFont(new Font("黑体",Font.BOLD,24));
        g.drawString(checkCode,15,25);

        //参数一：图片对象
        //参数二：图片的格式，如PNG,JPG,GIF
        //参数三：图片输出到哪里去
        ImageIO.write(image,"PNG",response.getOutputStream());
    }

    private String getCheckCode() {
        String base = "23456789ABCDEFGHJKMNPQRSTUVWXYVZabcdefghjkmnpqrstuvwxyz";
        int size = base.length();
        Random r = new Random();
        StringBuffer sb = new StringBuffer();
        for(int i=1;i<=4;i++){
            int index = r.nextInt(size);
            char c = base.charAt(index);
            sb.append(c);
        }
        return sb.toString();
    }
    */
}
