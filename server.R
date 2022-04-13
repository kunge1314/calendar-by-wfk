
server <- function(input, output) {
        
        
        output$photo1 <- renderPlot({
        
        y=input$year1
        
        th0=input$thing1
        th1=input$Test_eR
        th2=input$Test_eR2
        th3=input$Test_eR3
        th4=input$Test_eR4
        th5=input$Test_eR5
        th6=input$Test_eR6
        th7=input$Test_eR7
        
        th= c(th0,th1,th2,th3,th4,th5,th6,th7)
        thssr=paste(th, collapse = "\n")
        
        m=input$selectmonth
        mm=as.numeric(m)
        d=input$day1
        dd=as.numeric(d)
        
        
        
        
  calendR(year = y, 
         month =  mm,
        text = thssr,
        
        text.pos =dd,
        
        text.col = "black",
        text.size=3.8, 
        day.size = 5,
        
        weeknames.col = "black",
        
        special.days = "weekend",
        
        special.col = "green2",
        
        start = "M",
        
        subtitle = "zhu zhu mi is watch you!",
        
        subtitle.col = "red4",
        
)
                
                
        })
                
}

