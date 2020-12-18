package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import model.Account;

public class AccountValidator implements Validator {
	 private final Validator addressValidator;
	    public AccountValidator(Validator addressValidator) {
	        if (addressValidator == null) {
	            throw new IllegalArgumentException("The supplied [Validator] is " +
	                "required and must not be null.");
	        }
	        if (!addressValidator.supports(Account.class)) {
	            throw new IllegalArgumentException("The supplied [Validator] must " +
	                "support the validation of [Address] instances.");
	        }
	        this.addressValidator = addressValidator;
	    }

	@Override
	public boolean supports(Class<?> clazz) {
		
		
		return Account.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object object, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "field.requied");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullname", "field.requied");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "field.requied");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "image", "field.requied");
//		Account account= (Account)object;
//		try {
//			errors.pushNestedPath("address");
//			ValidationUtils.invokeValidator(this.addressValidator, account.getImage(), errors);
//		}finally {
//			errors.popNestedPath();
//			
//		}
		
	}

}
