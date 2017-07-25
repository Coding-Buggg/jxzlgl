package com.jxzl.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//��ȡ�ļ�����·��
		String path = getServletContext().getRealPath("/") + "material/";
		String filename = req.getParameter("filename");
		File file = new File(path + filename);
		if(file.exists()){
			//������Ӧ����application/octet-stream
			resp.setContentType("application/x-msdownload");
			//����ͷ��Ϣ
			resp.setHeader("Content-Disposition", "attachment;filename=\"" + URLEncoder.encode(filename, "GB18030") + "\"");
			InputStream inputStream = new FileInputStream(file);
			ServletOutputStream ouputStream = resp.getOutputStream();
			byte b[] = new byte[1024];
			int n ;
			while((n = inputStream.read(b)) != -1){
				ouputStream.write(b,0,n);
			}
			//�ر������ͷ���Դ
			ouputStream.close();
			inputStream.close();
			
			
		}else{
			req.setAttribute("errorResult", "�ļ�����������ʧ�ܣ�");
			RequestDispatcher dispatcher = req.getRequestDispatcher("CZ.jsp");
			dispatcher.forward(req, resp);
		}
		
		
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req,resp);
	}

	
	
}