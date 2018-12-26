package com.mlab.endpoint.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.mlab.endpoint.Model.ReportData;
import com.mlab.endpoint.Model.ReportRequestVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.interfaces.Report;
import com.mlab.endpoint.report.HeaderFooter;

@Controller
@RequestMapping("/download")
public class PdfController {

	 @Autowired
	    private Report report;
	
	@RequestMapping(value = "/generatePDF_details_courtOrder", method = RequestMethod.GET)
    public String generatePDF_details_courtOrder(@ModelAttribute("requestVO") ReportRequestVO requestVO, Model model,
            HttpSession session) throws ServiceException, UnsupportedEncodingException, FileNotFoundException, DocumentException { 
        
        return "reportByCourtOrder";
    }  
    
    @RequestMapping(value = "/generatePDF_details_investigatingAgencies", method = RequestMethod.GET)
    public String generatePDF_details_investigatingAgencies(@ModelAttribute("requestVO") ReportRequestVO requestVO, Model model,
            HttpSession session) throws ServiceException, UnsupportedEncodingException, FileNotFoundException, DocumentException { 
        
        return "reportByInvestigatingAgencies";
    } 
    
    @RequestMapping(value = "/generatePDF_details_frReport", method = RequestMethod.GET)
    public String generatePDF_details_frReport(@ModelAttribute("requestVO") ReportRequestVO requestVO, Model model,
            HttpSession session) throws ServiceException, UnsupportedEncodingException, FileNotFoundException, DocumentException { 
        
        return "reportByFR_Report";
    } 
    
    @RequestMapping(value = "/generatePDF_details_investigationResult", method = RequestMethod.GET)
    public String generatePDF_details_investigationResult(@ModelAttribute("requestVO") ReportRequestVO requestVO, Model model,
            HttpSession session) throws ServiceException, UnsupportedEncodingException, FileNotFoundException, DocumentException { 
        
    	return "reportByInvestigationResult";
    }
    
    @RequestMapping(value = "/generatePDF_details_law", method = RequestMethod.GET)
    public String generatePDF_details_law(@ModelAttribute("requestVO") ReportRequestVO requestVO, Model model,
            HttpSession session) throws ServiceException, UnsupportedEncodingException, FileNotFoundException, DocumentException { 
        
    	return "reportByLaw";
    }
	
}
