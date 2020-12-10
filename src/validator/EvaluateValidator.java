package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import model.Account;
import model.Evaluate;

public class EvaluateValidator implements Validator {
	 private final Validator addressValidator;

	    public EvaluateValidator(Validator addressValidator) {
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
		
		
		return Evaluate.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object object, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "time", "field.requied");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "content", "field.requied");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "star", "field.requied");
		
		Evaluate evaluate= (Evaluate)object;
		try {
			errors.pushNestedPath("account");
			ValidationUtils.invokeValidator(this.addressValidator, evaluate.getAccount(), errors);
		}finally {
			errors.popNestedPath();
			
		}
		
	}

}
