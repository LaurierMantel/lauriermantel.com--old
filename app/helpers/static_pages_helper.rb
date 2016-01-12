module StaticPagesHelper
	def home_page?
		current_page?(controller: 'static_pages', action: 'home')
	end
end
