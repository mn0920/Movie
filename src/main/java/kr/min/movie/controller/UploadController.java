package kr.min.movie.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.min.movie.utils.MediaUtils;
import kr.min.movie.utils.UploadFileUtils;

@Controller
public class UploadController {

  @Resource
  private String uploadPath;

  private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

  @RequestMapping(value = "/admin/uploadAjax", method = RequestMethod.GET)
  public String uploadAjaxGet() {
    return "admin/uploadAjax";
  }

  @ResponseBody
  @RequestMapping(value = "/admin/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
  public ResponseEntity<String> uploadAjaxPost(MultipartFile file) throws Exception {

    logger.info("originalName: " + file.getOriginalFilename());
    System.out.println(uploadPath);
    System.out.println(file.getOriginalFilename());

    return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
  }

  @ResponseBody
  @RequestMapping("/admin/displayFile")
  public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {

    InputStream in = null;
    ResponseEntity<byte[]> entity = null;

    logger.info("FILE NAME : " + fileName);

    try {
      String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
      MediaType mType = MediaUtils.getMediaType(formatName);
      HttpHeaders headers = new HttpHeaders();
      in = new FileInputStream(uploadPath + fileName);

      if (mType != null) {
        headers.setContentType(mType);
      } else {
        fileName = fileName.substring(fileName.indexOf("_") + 1);
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        headers.add("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
      }
      entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
    } finally {
      in.close();
    }
    return entity;
  }

  @ResponseBody
  @RequestMapping(value="/admin/deleteFile", method=RequestMethod.POST)
  public ResponseEntity<String> deleteFile(String fileName){
    
    logger.info("delete file : "+fileName);
    
    String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
    
    MediaType mType = MediaUtils.getMediaType(formatName);
    
    if(mType != null) {
      String front = fileName.substring(0, 12);
      String end = fileName.substring(14);
      new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
    }
    new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
    
    return new ResponseEntity<String>("deleted", HttpStatus.OK);
  }
  
}
