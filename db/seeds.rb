treehuggers = File.open(File.join(Rails.root,
                                  '/app/assets/images/treehuggers.png'))
projects = [[
  "Treehuggers",
  "TreeHuggers was an teamproject during the second week of my
                traineeship at Codaisseur, where we were tasked to build an
                AirBnB clone in Rails. We decided to sell luxury treehouses.
                It was a good project to learn to work collaborative with
                github. Also was it my first time working with a gem like devise
                for authentication. Postgresql is used as an database backend
                for storing the treehouses, users, and reservations.",
  treehuggers,
  "https://github.com/L03TJ3/treehouses",
  "https://guarded-basin-47812.herokuapp.com",
  "Ruby, Rails, PostgreSQL, Devise, Bootstrap",
]]

tags = [
  "Ruby",
  "PostgreSQL",
  "Rails",
  "ReactJS",
  "Devise",
  "Materialize",
  "Bootstrap",
  "jQuery",
  "Javascript",
  "CSS",
  "SCSS",
  "Mobile",
  "AJAX"
]

tags.each do |tag_name|
  tags = Tag.create( name: tag_name)
end

projects.each do | title, description, image, github, heroku, tagss |
  project = Project.create( title: title, description: description, image: image, github: github, heroku: heroku)

  tagss.split( ", ").each do |tag_name|
    if tag = Tag.find_by( name: tag_name )
    else
      tag = Tag.create( name: tag_name )
    end

    ProjectsTags.create( tag_id: tag.id, project_id: project.id )
  end
end
