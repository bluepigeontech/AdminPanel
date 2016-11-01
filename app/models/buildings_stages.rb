class BuildingsStages

	def self.build building
		@building_original_stages = Stage.where(:stage_parent => "Building")
		collection = Building::Stage.where(:building_id => building.id)
      	difference = @building_original_stages.count - collection.count

        puts "building #{building.id} difference #{difference}"
      	if difference != 0 && difference < @building_original_stages.count
        	difference.times do
          		building.stages.build
        	end
  		elsif difference == @building_original_stages.count
        	@building_original_stages.each do |original_stage|
          		building.stages.build
                
    		end
      	end

        collection.each do |building_stage|
            if building_stage.stage_id.nil?
                
            end
            puts "building_stage #{building_stage.stage_id}"
            difference = Stage.find(building_stage.stage_id).sub_stages.count - building_stage.sub_stages.count
            puts "DEBUG #{difference}"
            difference.times do
                building_stage.sub_stages.build
            end

        end
	end

end