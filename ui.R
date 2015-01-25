shinyUI(pageWithSidebar(
        # Application title
        headerPanel("Projectile motion"),
        sidebarPanel(
                h3("Proyectile 1"),
                sliderInput('velocity1', 'velocity m/s', 55, min = 50, max = 70, step = 1),
                sliderInput('angle1', 'angle shoot', 30, min = 10, max = 90, step = 5),
      
                h3("Proyectile 2"),
                sliderInput('velocity2', 'velocity m/s', 65, min = 50, max = 70, step = 1),
                sliderInput('angle2', 'angle shoot', 50, min = 10, max = 90, step = 5)
        ),
        mainPanel(
        
                h3('Maximun Distance Projectile 1'),
                verbatimTextOutput('xmax1'),
                h3('Maximun Distance Projectile 2'),
                verbatimTextOutput('xmax2'),
                plotOutput('plot')
        )
))