package com.myspring.pro28.ex01;

import java.io.File;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.coobird.thumbnailator.Thumbnails;

//@Controller
public class FileDownloadController {
	private static String CURR_IMAGE_REPO_PATH="D:\\eclipse\\eclipse_2021_06\\pro28FileDownload";
	
//	@RequestMapping("/download")
//	public void download(@RequestParam("imageFileName") String imageFileName,
//				HttpServletResponse response
//			)throws Exception{
//		OutputStream out = response.getOutputStream();
//		String downFile = CURR_IMAGE_REPO_PATH+"\\"+imageFileName;
//		File file = new File(downFile);
//		
//		response.setHeader("Cache-Control", "no-cache");
//		response.addHeader("Content-disposition", "attachment; fileName="+imageFileName);
//		FileInputStream in = new FileInputStream(file);
//		byte[] buffer = new byte[1024*8];
//		while(true) {
//			int count = in.read(buffer);
//			if(count == -1)break;
//			out.write(buffer,0,count);
//		}
//		in.close();
//		out.close();
//		
//	}
	
//	@RequestMapping("/download")
	public void download(@RequestParam("imageFileName") String imageFileName,
				HttpServletResponse response
			)throws Exception{
		OutputStream out = response.getOutputStream();
		String filePath = CURR_IMAGE_REPO_PATH+"\\"+imageFileName;
		File image = new File(filePath);
		
		int lastIndex = imageFileName.lastIndexOf(".");
		String fileName = imageFileName.substring(0,lastIndex);
		
		File thumbnail = new File(CURR_IMAGE_REPO_PATH+"\\"+"thumbnail"+"\\"+fileName+".png");
		
		if(image.exists()) {
			thumbnail.getParentFile().mkdirs();
			Thumbnails.of(image).size(50,50).outputFormat("png").toOutputStream(out);
			
		}else {
			return;
		}
		byte[] buffer = new byte[1024*8];
		out.write(buffer);
		
		out.close();
	}
}
