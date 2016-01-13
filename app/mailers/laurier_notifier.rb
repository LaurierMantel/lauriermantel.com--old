class LaurierNotifier < ApplicationMailer
	default :from => 'lauriermantel.com'
	LAURIER_MANTEL_EMAIL = "lauriermantel@gmail.com".freeze

	def send_laurier_an_email(contact)
		@contact = contact		
		mail( :to => LAURIER_MANTEL_EMAIL, :subject => "#{@contact.name} wants to get in touch")
	end
end
