class ProjectsStages

	def self.build project
		@project_original_stages = Stage.where(:stage_parent => "Project")
		collection = Project::Stage.where(:project_id => project.id)
      	difference = @project_original_stages.count - collection.count

        puts "project #{project.id} difference #{difference}"
      	if difference != 0 && difference < @project_original_stages.count
        	difference.times do
          		project.stages.build
        	end
  		elsif difference == @project_original_stages.count
        	@project_original_stages.each do |original_stage|
          		project.stages.build
                
    		end
      	end

        collection.each do |project_stage|
            if project_stage.stage_id.nil?
                debugger
            end
            puts "project_stage #{project_stage.stage_id}"
            difference = Stage.find(project_stage.stage_id).sub_stages.count - project_stage.sub_stages.count
            puts "DEBUG #{difference}"
            difference.times do
                project_stage.sub_stages.build
            end

        end

        # sub_stages_count = []
        # @project_original_stages.each do |original_stage|
        #     sub_stages_count.push(original_stage.sub_stages.count)
        # end


	end

    def self.build_sub_stages stage, original_stage
        @stage_original_sub_stages = Stage::SubStage.where(:stage_id => original_stage.id)
        collection = Project::Stage::SubStage.where(:stage_id => stage.id)
        difference = @stage_original_sub_stages.count - collection.count

        if difference != 0 && difference < @stage_original_sub_stages.count
            difference.times do
                stage.sub_stages.build
            end
        elsif difference == @stage_original_sub_stages.count
            @stage_original_sub_stages.each do |original_sub_stage|
                stage.sub_stages.build
            end
        end
                
    end
end