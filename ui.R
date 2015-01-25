shinyUI(pageWithSidebar(
        # Application title
        headerPanel("Projectile motion"),
        sidebarPanel(
                h3("Proyectile 1"),
                sliderInput('velocity1', 'Initial velocity (m/s)', 55, min = 50, max = 70, step = 1),
                sliderInput('angle1', 'Angle', 30, min = 10, max = 90, step = 5),
                br(),
                h3("Proyectile 2"),
                sliderInput('velocity2', 'Initial velocity  (m/s)', 65, min = 50, max = 70, step = 1),
                sliderInput('angle2', 'Angle', 50, min = 10, max = 90, step = 5),
                br(),
                br(),
                a(href="https://dperezjv.github.io", "Help")
                
                
                ),
        mainPanel(
        
                h3('Maximun Distance Projectile 1'),
                verbatimTextOutput('xmax1'),
                h3('Maximun Distance Projectile 2'),
                verbatimTextOutput('xmax2'),
                plotOutput('plot'),
                br(),
                p('You can view the code in the next link:'),
                a(href="https://github.com/dperezjv/DevelopingDataPoducts", "Documentation")
        )
))