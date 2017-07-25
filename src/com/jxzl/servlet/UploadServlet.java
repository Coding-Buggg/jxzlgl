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
		//�����ϴ��ļ��ı���·��
		String filePath=getServletContext().getRealPath("/")+"material";
		//���ļ��в�����ʱ����
		File file=new File(filePath);
		if(!file.exists()){
			file.mkdir();
		}
//		
//           //��request�л�ȡ����Ϣ
//		   InputStream fileSource=req.getInputStream();
//		   String tempFileName="E:/tempFile";
//		   //tempfileָ����ʱ�ļ�
//		   File tempFile=new File(tempFileName);
//		   //outputstram�ļ������ָ����ʱ�ļ�
//		   FileOutputStream outputStream=new FileOutputStream(tempFile);
//		   byte b[]=new byte[1024];
//		   int n;
//		   while((n=fileSource.read(b))!=-1){
//			   outputStream.write(b, 0, n);
//		   }
//		   //�ر������/������
//		   outputStream.close();
//		   fileSource.close();
//		   
//		 //��ȡ�ϴ��ļ�������
//			RandomAccessFile randomFile = new RandomAccessFile(tempFile,"r");
//			randomFile.readLine();
//			String str = randomFile.readLine();
//			int beginIndex=str.lastIndexOf("=")+2;
//			int endIndex=str.lastIndexOf("\"");
//			String filename = new String(str.substring(beginIndex, endIndex).getBytes("iso-8859-1"),"utf-8");
//			
//			System.out.println("�ļ����ƣ�"+filename);
//			
//			//���¶�λ�ļ�ָ�뵽�ļ�ͷ
//			randomFile.seek(0);
//			long startPosition = 0; 
//			int i = 1;
//			//��ȡ�ļ����� ��ʼλ��
//			while(( n = randomFile.readByte()) != -1 && i <=4){
//				if(n == '\n'){
//					startPosition = randomFile.getFilePointer();
//					i ++;
//				}
//			}
//			startPosition = startPosition;
//			//��ȡ�ļ����� ����λ��
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
//			//���ñ����ϴ��ļ���·��
//			String realPath = getServletContext().getRealPath("/") + "material";
//			File fileupload = new File(realPath);
//			if(!fileupload.exists()){
//				fileupload.mkdir();
//			}
//			File saveFile = new File(realPath,filename);
//			RandomAccessFile randomAccessFile = new RandomAccessFile(saveFile,"rw");
//			//����ʱ�ļ����ж�ȡ�ļ����ݣ�������ֹλ�û�ȡ��
//			randomFile.seek(startPosition);
//			while(startPosition < endPosition){
//				randomAccessFile.write(randomFile.readByte());
//				startPosition = randomFile.getFilePointer();
//			}
//			
//				
//			
//			//�ر������������ɾ����ʱ�ļ�
//			randomAccessFile.close();
//			randomFile.close();
//			tempFile.delete();
		
	    SmartUpload su = new SmartUpload();  
        // ��ʼ���ļ��ϴ�����  
        su.initialize(getServletConfig(),req, resp);  
        
        String result="�ϴ��ɹ�!";

        try {  
                 // ���ò�������ļ�����չ��  
                 su.setDeniedFilesList("exe,php");  
                 // �ϴ��ļ�  
                 su.upload();  
                 // �����ļ�,ָ��·������  
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
        	result="�ϴ�ʧ��!";
			e.printStackTrace();
		}  
        req.setAttribute("result", result);
        req.getRequestDispatcher("SCzl.jsp").forward(req, resp); 
       
	}  
			
}

