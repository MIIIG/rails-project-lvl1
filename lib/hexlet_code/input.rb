# frozen_string_literal: false

require_relative 'hexlet_code/tag'

# Generating inputs
module Input
	@cols = 20
	@rows = 40
	autoload(:Tag, "lib/hexlet_code/tag")
	# p_send = public_send(:as, user)
	# public_send(method, data)

	def self.input(user, tag, opts = {})
		name = attrs[:name]
		if user[tag].empty?
			public_send(tag, user)
		elsif opts[:as] == :text
			Tag.build(:textarea, { :name name, :cols @cols, :rows @rows})
		else
			Tag.build(:input, { :name name, :type 'text' })
		end
	end

	'public_send'.constantize
	# begin
	# 	puts 'before raise'
	# 	raise 'error'
	# 	puts 'after raise'
	# rescue
	# 	puts 'rescued'
	# end
end