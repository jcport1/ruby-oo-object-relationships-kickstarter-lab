class Project

    attr_reader :title 

    def initialize(title)

        @title = title
    end 

    def add_backer(backer_object)

        ProjectBacker.new(self,backer_object)

    end 

    def backers

        new_array = ProjectBacker.all.select do |pro|
            pro.project == self 
        end 

        new_array.map do |pro|
            pro.backer 
        end 

    end 

end 