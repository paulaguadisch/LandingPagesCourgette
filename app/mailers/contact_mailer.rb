class ContactMailer < ApplicationMailer
	def contact(user)
	    @user = user
	    mail(to: @user.email, subject: 'Envie de découvrir THP?')
    end
end
