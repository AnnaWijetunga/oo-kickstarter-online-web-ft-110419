class Project
  
  attr_accessor 
  attr_reader :title, :backers 
  
  def initialize(title)
    @title = title  
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer 
    backer.back_projects(self) unless backer.projects.include?(self)
  end 
end 

# whenever back_project() is called to update @backed_projects, the project should also update its @backers list
# whenever add_backer()  is called to update @backers, the backer should also update its @backed_projects list 