class ExampleMailer < ApplicationMailer
    default from: "iluminaticsac@gmail.com"
    
    def sample_email(category)
        @category = category
        mail(to: 'jlbugarin@hotmail.com', subject: "Ejemplo UPC"+@category.description)
    end
    
end
