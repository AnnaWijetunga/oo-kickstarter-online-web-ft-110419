class Project
  
  attr_accessor 
  attr_reader :title, :backers 
  
  def initialize(title)
    @title = title  
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer 
    backer.
  end 

  def back_project(project)
    @backed_projects << project # accepts a Project as an arugment and stores it in a back_projects array
    project.add_backer(self) unless project.backers.include?(self) # adds the backer to the project's backers array
  end 
  
end 

# whenever back_project() is called to update @backed_projects, the project should also update its @backers list
# whenever add_backer()  is called to update @backers, the backer should also update its @backed_projects list 