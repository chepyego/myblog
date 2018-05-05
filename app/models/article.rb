class Article < ActiveRecord::Base
	has_many :comments
	
	has_many :taggings
	has_many :tags, through: :taggings
	has_attached_file :image,style: { medium: "300*300>", thumb: "100*100>"}
	validates_attachment_content_type :image, :content_type =>["image/jpg","image/jpeg","i"]

	def tag_List
		self.tags.collect do |tag|
			tag.name
		end.join(", ")


        
        def tag_list
        	tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
		new_or_found_tags = tag_names.collect{ |name| Tag.find_or_create_by(name: name) }
		self.tags = new_or_found_tags
        end
	 
		
	end
    end
