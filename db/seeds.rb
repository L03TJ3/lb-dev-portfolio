treehuggers = File.open(File.join(Rails.root,
                                  '/app/assets/images/treehuggers.png'))
Project.create(
  title: "Treehuggers",
  description: "TreeHuggers was an teamproject during the second week of my
                traineeship at Codaisseur, where we were tasked to build an
                AirBnB clone in Rails. We decided to sell luxury treehouses.
                It was a good project to learn to work collaborative with
                github. Also was it my first time working with a gem like devise
                for authentication. Postgresql is used as an database backend
                for storing the treehouses, users, and reservations.",
  image: treehuggers,
  github: "https://github.com/L03TJ3/treehouses",
  heroku: "https://guarded-basin-47812.herokuapp.com"
)
