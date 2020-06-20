package pl.coderslab.demo_project.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class HouseNumberValidator implements ConstraintValidator<HouseNumberCheck, String> {
    @Override
    public void initialize(HouseNumberCheck constraintAnnotation) {

    }

    @Override
    public boolean isValid(String houseNumber, ConstraintValidatorContext constraintValidatorContext) {
        return houseNumber.matches("\\d+\\s*-*/*\\d*");
    }
}
