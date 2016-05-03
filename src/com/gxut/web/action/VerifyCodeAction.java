package com.gxut.web.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
import com.gxut.util.VerifyCode.VerifyCode;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class VerifyCodeAction implements Action {
	private ByteArrayInputStream inputStream;
	public String execute() throws Exception {
		VerifyCode vc=new VerifyCode();
		ByteArrayOutputStream output = new ByteArrayOutputStream();      
		ImageOutputStream imageOut = ImageIO.createImageOutputStream(output);   
		ImageIO.write(vc.getImage(),"JPEG", imageOut);
		this.setInputStream(new ByteArrayInputStream(output.toByteArray()));
		ActionContext.getContext().getSession().put("verifyCode", vc.getText());
		return SUCCESS;
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}
}
