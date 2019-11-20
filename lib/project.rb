class Project
  
  attr_accessor :backers 
  attr_reader :title
  
  def initialize(title)
    @title = title  
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer 
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end 
  
end 

# whenever back_project() is called to update @backed_projects, the project should also update its @backers list
# whenever add_backer()  is called to update @backers, the backer should also update its @backed_projects list 