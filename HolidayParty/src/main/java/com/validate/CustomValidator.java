package com.validate;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.model.RegistrationBean;

@Component
public class CustomValidator implements Validator {

	public void validate(Object arg0, Errors arg1) {
		
		RegistrationBean registrationBean=(RegistrationBean) arg0;
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1,"userName", "field.required","User Name cannot be blank");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1,"contactNumber","field.required","Contact Number should be of 10 digits/Contact Number should not be blank");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1,"emailId","field.required","Email ID cannot be blank Should be a proper email ID format");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1,"confirmEmailId","field.required","Confirm Email ID cannot be blank");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1,"status","field.required","please agree to the terms and conditions");
		if(String.valueOf(registrationBean.getContactNumber()).length() !=10) {
			arg1.rejectValue("contactNumber","field.invalid","Contact Number should be of 10 digits/Contact Number should not be blank");
		}
		if(!registrationBean.getEmailId().matches(".*@.*.com")) {
			arg1.rejectValue("emailId","field.invalid","should be a proper email ID format");
		}
		if(!registrationBean.getConfirmEmailId().matches(".*@.*.com")) {
			arg1.rejectValue("confirmEmailId","field.invalid","should be a proper email ID format");
		}
		if(!registrationBean.getEmailId().equals(registrationBean.getConfirmEmailId())) {
			arg1.rejectValue("confirmEmailId","field.invalid","Email and Confirm Email should be same");
		}
		if(!registrationBean.isStatus()) {
			arg1.rejectValue("status","field.invalid","please agree to the terms and conditions");
		}
	
	}

	public boolean supports(Class<?> arg0) {

		return RegistrationBean.class.isAssignableFrom(arg0);
	}

}
