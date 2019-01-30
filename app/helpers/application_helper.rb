module ApplicationHelper
	def fullpath
		"/"+params[:path]+".erb"
	end
	
	def folder
		fullpath.split("/")[0..-2].join("/")
	end
	
	def file
		fullpath.split("/")[-1]
	end
	
	def local_files
		`find #{folder}/ -maxdepth 1 -type f`.split().map{|e| e.split("/")[-1]}-[file]
	end
end
