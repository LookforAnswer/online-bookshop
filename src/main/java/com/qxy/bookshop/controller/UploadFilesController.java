package com.qxy.bookshop.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.qxy.bookshop.model.LoginInfo;
import com.qxy.bookshop.service.LoginService;
import com.qxy.common.excel.ImportExcelUtil;  
  

//教程url:http://blog.csdn.net/onepersontz/article/details/49891405
@Controller
@RequestMapping("file")
public class UploadFilesController { 
    
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/page",method={RequestMethod.GET})
	public ModelAndView page(){
		return new ModelAndView("uploadexcel");
	}
	
	@RequestMapping(value="/uploadImg",method={RequestMethod.GET})
	public ModelAndView uploadImg(){
		return new ModelAndView("uploadImage");
	}
	
    /**  
     * 描述：通过传统方式form表单提交方式导入excel文件  
     * @param request  
     * @throws Exception  
     */  
    @RequestMapping(value="upload",method={RequestMethod.GET,RequestMethod.POST})  
    public  String  uploadExcel(HttpServletRequest request) throws Exception {  
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;    
        System.out.println("通过传统方式form表单提交方式导入excel文件！");  
          
        InputStream in =null;  
        List<List<Object>> listob = null;  
        MultipartFile file = multipartRequest.getFile("upfile");  
        if(file.isEmpty()){  
            throw new Exception("文件不存在！");  
        }  
        in = file.getInputStream();  
        listob = new ImportExcelUtil().getBankListByExcel(in,file.getOriginalFilename());  
        in.close();  
        
        //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出    
        for (int i = 0; i < listob.size(); i++) {  
            List<Object> lo = listob.get(i);  
            
            LoginInfo vo = new LoginInfo();  
            vo.setId(String.valueOf(lo.get(0)));  
            vo.setUsername(String.valueOf(lo.get(1)));  
            vo.setPassword(String.valueOf(lo.get(2)));   
              
            System.out.println("打印信息-->ID:"+vo.getId()+"  用户名："+vo.getUsername()+"   密码："+vo.getPassword());  
        }  
        return "result";  
    }  
      
    /** 
     * 描述：通过 jquery.form.js 插件提供的ajax方式上传文件 
     * @param request 
     * @param response 
     * @throws Exception 
     */  
    @ResponseBody  
    @RequestMapping(value="ajaxUpload",method={RequestMethod.GET,RequestMethod.POST})  
    public  void  ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response) throws Exception {  
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;    
          
        System.out.println("通过 jquery.form.js 提供的ajax方式上传文件！");  
          
        InputStream in =null;  
        List<List<Object>> listob = null;  
        MultipartFile file = multipartRequest.getFile("upfile");  
        if(file.isEmpty()){  
            throw new Exception("文件不存在！");  
        }  
          
        in = file.getInputStream();  
        listob = new ImportExcelUtil().getBankListByExcel(in,file.getOriginalFilename());  
          
        //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出  
        for (int i = 0; i < listob.size(); i++) {  
            List<Object> lo = listob.get(i);  
            
            LoginInfo vo = new LoginInfo();  
            vo.setId(String.valueOf(lo.get(0)));  
            vo.setUsername(String.valueOf(lo.get(1)));  
            vo.setPassword(String.valueOf(lo.get(2)));   
              
            System.out.println("打印信息-->ID:"+vo.getId()+"  用户名："+vo.getUsername()+"   密码："+vo.getPassword());  
        }  
          
        PrintWriter out = null;  
        response.setCharacterEncoding("utf-8");  //防止ajax接受到的中文信息乱码  
        out = response.getWriter();  
        out.print("文件导入成功！");  
        out.flush();  
        out.close();  
    }
    
    
    
    @RequestMapping(value="uploadImg",method={RequestMethod.GET,RequestMethod.POST}) 
    public  ModelAndView uploadImg(@RequestParam("upImg") MultipartFile file,HttpServletRequest request){
    	LoginInfo entity = new LoginInfo();
    	
    	try{
    		byte[] b1 = file.getBytes();
    		entity.setImage(b1);
    		loginService.insertLoginInfo(entity);
    	}
    	catch (IOException e){
    		e.printStackTrace();
    	}
    	
    	return new ModelAndView("success"); 
    }
    
    @RequestMapping(value="getImg",method={RequestMethod.GET,RequestMethod.POST}) 
    public void getImg(String id,HttpServletRequest request,HttpServletResponse response){
    	HttpSession seesion = request.getSession();  
    	
    	LoginInfo entity=loginService.queryLoginInfoById(id);
        byte[] data=entity.getImage();  
        List<LoginInfo> list = loginService.queryLoginInfoByEntity(new LoginInfo());
        response.setContentType("img/jpeg");  
        response.setCharacterEncoding("utf-8");  
        try {  
              
            OutputStream outputStream=response.getOutputStream();  
            InputStream in=new ByteArrayInputStream(data);  
            int len=0;  
            byte[]buf=new byte[1024];  
            while((len=in.read(buf,0,1024))!=-1){  
                outputStream.write(buf, 0, len);  
            }  
            in.close();
            outputStream.close();  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        } 
    }
    
    
    @RequestMapping(value="getImgStream",method={RequestMethod.GET,RequestMethod.POST}) 
    public  byte[] getImgStream(String id,HttpServletRequest request,HttpServletResponse response){
    	HttpSession seesion = request.getSession();  
    	
    	LoginInfo entity=loginService.queryLoginInfoById(id);
        byte[] data=entity.getImage();  
        return data;
        /*response.setContentType("img/jpeg");  
        response.setCharacterEncoding("utf-8");  */
        /*try {  
              
            OutputStream outputStream=response.getOutputStream();  
            InputStream in=new ByteArrayInputStream(data);  
              
            int len=0;  
            byte[]buf=new byte[1024];  
            while((len=in.read(buf,0,1024))!=-1){  
                outputStream.write(buf, 0, len);  
            }  
            outputStream.close();  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        } */
    }
    
}  