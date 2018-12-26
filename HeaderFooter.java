package com.mlab.endpoint.report;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfWriter;
import java.sql.Timestamp;

public class HeaderFooter extends PdfPageEventHelper{

	String reportName = "";
	
	public void HeaderFooter(String reportName)
	{
		this.reportName = reportName;
	}
	
	 public void onStartPage(PdfWriter writer,Document document) {
	    	Rectangle rect = writer.getBoxSize("art");
	    	
	    	
//	    	RAB Bangladesh
//	    	Report Title:  [Report Category Name]
//	    	Date of Generation: xx/xx/xxxx

	    	
	        ColumnText.showTextAligned(writer.getDirectContent(),Element.ALIGN_CENTER, new Phrase("RAB Bangladesh"), 300, 800, 0);
	        ColumnText.showTextAligned(writer.getDirectContent(),Element.ALIGN_CENTER, new Phrase("Report Title: "), 300, 780, 0);
	        ColumnText.showTextAligned(writer.getDirectContent(),Element.ALIGN_CENTER, new Phrase("Date of Generation:"+new Date()), 300, 760, 0);
	    }
	    public void onEndPage(PdfWriter writer,Document document) {
	    	Rectangle rect = writer.getBoxSize("art");
	        ColumnText.showTextAligned(writer.getDirectContent(),Element.ALIGN_CENTER, new Phrase("RAB Bangladesh"), 70, rect.getBottom(), 0); 
	    }
}
