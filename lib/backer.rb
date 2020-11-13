require 'pry'
class Backer

    attr_reader :name 

    def initialize(name)
        @name = name

    end 

    def back_project(project_object)

        ProjectBacker.new(project_object, self)

    end 

    def backed_projects

        first_array = ProjectBacker.all.select do |pro|
            pro.backer == self
        end 

        first_array.map do |pro|
                pro.project 
            end 

    end 


end 