



shinyServer(
        function(input, output) {
                renderTable
                output$xmax1 <- renderPrint(input$velocity1^2*sin(4*pi*input$angle1/360)/9.8)
                output$xmax2 <- renderPrint(input$velocity2^2*sin(4*pi*input$angle2/360)/9.8)
                output$plot <- renderPlot({x1 <- 0:input$velocity1^2*sin(4*pi*input$angle1/360)/9.8
                                           x2 <- 0:input$velocity2^2*sin(4*pi*input$angle2/360)/9.8
                        plot(x1, x1*tan(2*pi*input$angle1/360)-9.8*x1^2/(2*input$velocity1^2*cos(2*pi*input$angle1/360)^2),
                             xlim=c(0,500), ylim=c(0,250),type="l", col="red",
                             xlab="Distance (meters)", ylab="Height (meters)",
                             main="Proyectiles Motion"
                        )
                        lines(x2, x2*tan(2*pi*input$angle2/360)-9.8*x2^2/(2*input$velocity2^2*cos(2*pi*input$angle2/360)^2), col='green')
                        legend(400,240,lty=1, c("Projectile 1", "Projectile 2"), col =c("red", "green"))
                        })
        }
)