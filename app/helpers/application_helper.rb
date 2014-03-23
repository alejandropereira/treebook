module ApplicationHelper
	def flash_class(key)
		case key
		when :alert
			"alert-danger"
		when :notice
			"alert-success"
		else
			""
		end
	end
end
