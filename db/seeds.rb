treehuggers = File.open(File.join(Rails.root,
                                  '/app/assets/images/treehuggers.png'))
Project.create(
  title: "Treehuggers",
  description: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Quae contraria sunt his, malane? Memini vero, inquam; Honesta
                oratio, Socratica, Platonis etiam. Sed haec quidem liberius ab
                eo dicuntur et saepius. Apparet statim, quae sint officia, quae
                actiones. An eiusdem modi? Ita multo sanguine profuso in laetitia
                et in victoria est mortuus. </p>",
  image: treehuggers,
  github: "https://github.com/L03TJ3/treehouses",
  heroku: "https://guarded-basin-47812.herokuapp.com"
)
