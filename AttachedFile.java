package com.mlab.endpoint.Model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;  

public class AttachedFile {
	
	private String fileName;
	
	private String  fileType;
	
	private String filePath;
	
	private  List<MultipartFile>   files;
	
	private String fileDescription;
	
	private String id;
	private String currentId;
	
	private ArrayList<Integer> attachmentIdList;
	
 
	public ArrayList<Integer> getAttachmentIdList() {
		return attachmentIdList;
	}

	public void setAttachmentIdList(ArrayList<Integer> attachmentIdList) {
		this.attachmentIdList = attachmentIdList;
	}

	public String getFileDescription() {
		return fileDescription;
	}

	public void setFileDescription(String fileDescription) {
		this.fileDescription = fileDescription;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
 
	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "AttachedFile [fileName=" + fileName + ", fileType=" + fileType
				+ ", filePath=" + filePath + ", files=" + files
				+ ", fileDescription=" + fileDescription + ", id=" + id
				+ ", currentId=" + currentId + ", attachmentIdList="
				+ attachmentIdList + "]";
	}

	public String getCurrentId() {
		return currentId;
	}

	public void setCurrentId(String currentId) {
		this.currentId = currentId;
	}
 
 
}
