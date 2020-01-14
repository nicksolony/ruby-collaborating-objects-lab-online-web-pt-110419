class MP3Importer
  require "pry"
 attr_accessor :path
 
 
 def initialize(file_path)
  @path = file_path
 end
 
 
 def files
#   binding.pry
   Dir["#{@path}/*.mp3"].collect {|file_name| file_name.split("mp3s/")[1]}
 end
 
 
 def import
<<<<<<< HEAD
   files.each {|file_name| Song.new_by_filename (file_name)}
=======
   
>>>>>>> 4bf30980f30482608d8aa882764ff6d59e28a1ab
 end
 
 # def import(list_of_filenames)
  #  list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
#  end
end