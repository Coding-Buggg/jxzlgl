package com.jxzl.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.sql.SQLException;

import javassist.compiler.ast.Variable;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lxh.smart.SmartUpload;
import org.lxh.smart.SmartUploadException;

import com.jxzl.zl.Material;
import com.jxzl.zl.MaterialDAO;

public class UploadServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
doPost(req, resp);
		
	}


	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
//		resp.setCharacterEncoding("GBK");
//		req.setCharacterEncoding("GBK");
//		
		//设置上传文件的保存路径
		String filePath=getServletContext().getRealPath("/")+"material";
		//当文件夹不存在时创建
		File file=new File(filePath);
		if(!file.exists()){
			file.mkdir();
		}
//		
//           //从request中获取流信息
//		   InputStream fileSource=req.getInputStream();
//		   String tempFileName="E:/tempFile";
//		   //tempfile指向临时文件
//		   File tempFile=new File(tempFileName);
//		   //outputstram文件输出流指向临时文件
//		   FileOutputStream outputStream=new FileOutputStream(tempFile);
//		   byte b[]=new byte[1024];
//		   int n;
//		   while((n=fileSource.read(b))!=-1){
//			   outputStream.write(b, 0, n);
//		   }
//		   //关闭输出流/输入流
//		   outputStream.close();
//		   fileSource.close();
//		   
//		 //获取上传文件的名称
//			RandomAccessFile randomFile = new RandomAccessFile(tempFile,"r");
//			randomFile.readLine();
//			String str = randomFile.readLine();
//			int beginIndex=str.lastIndexOf("=")+2;
//			int endIndex=str.lastIndexOf("\"");
//			String filename = new String(str.substring(beginIndex, endIndex).getBytes("iso-8859-1"),"utf-8");
//			
//			System.out.println("文件名称："+filename);
//			
//			//重新定位文件指针到文件头
//			randomFile.seek(0);
//			long startPosition = 0; 
//			int i = 1;
//			//获取文件内容 开始位置
//			while(( n = randomFile.readByte()) != -1 && i <=4){
//				if(n == '\n'){
//					startPosition = randomFile.getFilePointer();
//					i ++;
//				}
//			}
//			startPosition = startPosition;
//			//获取文件内容 结束位置
//			randomFile.seek(randomFile.length());
//			long endPosition = randomFile.getFilePointer();
//			int j = 1;
//			while(endPosition >=0 && j<=2){
//				endPosition--;
//				randomFile.seek(endPosition);
//				if(randomFile.readByte() == '\n'){
//					j++;
//				}
//			}
//			endPosition = endPosition -1;
//			
//			//设置保存上传文件的路径
//			String realPath = getServletContext().getRealPath("/") + "material";
//			File fileupload = new File(realPath);
//			if(!fileupload.exists()){
//				fileupload.mkdir();
//			}
//			File saveFile = new File(realPath,filename);
//			RandomAccessFile randomAccessFile = new RandomAccessFile(saveFile,"rw");
//			//从临时文件当中读取文件内容（根据起止位置获取）
//			randomFile.seek(startPosition);
//			while(startPosition < endPosition){
//				randomAccessFile.write(randomFile.readByte());
//				startPosition = randomFile.getFilePointer();
//			}
//			
//				
//			
//			//关闭输入输出流、删除临时文件
//			randomAccessFile.close();
//			randomFile.close();
//			tempFile.delete();
		
	    SmartUpload su = new SmartUpload();  
        // 初始化文件上传对象  
        su.initialize(getServletConfig(),req, resp);  
        
        String result="上传成功!";

        try {  
                 // 设置不允许的文件的扩展名  
                 su.setDeniedFilesList("exe,php");  
                 // 上传文件  
                 su.upload();  
                 // 保存文件,指定路径即可  
                 su.save(filePath);  
                 
                 MaterialDAO dao=new MaterialDAO();
                 int mid=0;
                 String mname=su.getRequest().getParameter("mname");
                 String type=su.getRequest().getParameter("type");
                 String msize=su.getRequest().getParameter("msize");
                 String tname=su.getRequest().getParameter("tname");
                 String profile=su.getRequest().getParameter("profile");
                 String scDate=su.getRequest().getParameter("scDate");
                 Material material=new Material(mid,mname,type,msize,tname,profile,scDate);
                 dao.save(material);
                 req.setAttribute("tname", tname);
                  
        } catch (Exception e) {
        	result="上传失败!";
			e.printStackTrace();
		}  
        req.setAttribute("result", result);
        req.getRequestDispatcher("SCzl.jsp").forward(req, resp); 
       
	}  
			
}

