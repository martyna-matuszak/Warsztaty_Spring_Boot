package pl.coderslab.demo_project.validator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = HouseNumberValidator.class)
@Target({ElementType.METHOD, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface HouseNumberCheck {
    String message() default "{invalid house number}";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
