package pl.coderslab.demo_project.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PostcodeValidator implements ConstraintValidator<PostcodeCheck, String> {


    @Override
    public void initialize(PostcodeCheck constraintAnnotation) {

    }

    @Override
    public boolean isValid(String postcode, ConstraintValidatorContext constraintValidatorContext) {
        return postcode.matches("\\d\\d-\\d\\d\\d");
    }
}
