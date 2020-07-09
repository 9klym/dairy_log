class GeneratorEmojis

	def initialize(arrforemoji)
		@current_path = File.dirname(__FILE__)
		@count = 6 #change only you changed count of unique part
		@emojis = arrforemoji

		@eyes = []
		@dir_eyes='eyes'

		@noses = []
		@dir_noses='noses'

		@mouthes = []
		@dir_mouthes='mouthes'



		adding(@eyes,@count,@dir_eyes)
		adding(@noses,@count,@dir_noses)
		adding(@mouthes,@count,@dir_mouthes)

		create_emoji(randomize(@eyes),randomize(@noses),randomize(@mouthes))#todo

		return @emojis
	end

	def adding(arr,count,dir)
		count.times do |i|
			full_path = @current_path+"/emojis/#{dir}/#{i}.txt"

			if(File.exist?(full_path))
				stream = File.new(full_path)
				arr<<stream.read
				stream.close
			else
				arr<<"file #{@full_path} not found"			
			end
		end
	end

	def randomize(arr)
		arr.sample
	end

	def create_emoji(eyes,nose,mouth)
		@emojis << "\n"
		@emojis << '    _____'
		@emojis << '   /     \ '
		@emojis << eyes
		@emojis << nose
		@emojis << mouth
		@emojis << '    \___/ '
		@emojis << "\n"
	end
end
