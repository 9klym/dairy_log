class Dairy
	
	#Constructor
	def initialize(content)
		@current_path = File.dirname(__FILE__)
		t = Time.now
		@current_date = t.strftime("%d.%m.%Y")
		@current_time = t.strftime("%H:%M:%S")
		record(content)
	end
 	
 	#Method for recording a log to txt
	def record (content)
		stream = File.new(@current_path+'/log/'+@current_date+'.txt',"a:UTF-8")
		stream << "Time: "+@current_time+"\n\n"
		stream << content + "\n"
		stream << ('*'*80 +"\n")
		stream.close 
	end 
end
