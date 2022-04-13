setwd("C:/Users/asus/Desktop/APP-data/")
getwd()
pacman::p_load(randomForest,caret,pROC,DT,ggplot2,shinydashboard,shiny,factoextra,calendR,stringr)

library(shinydashboard)

ui <- dashboardPage(skin="green",
                    
                    #标题
                    dashboardHeader(title = h3("自用日程表~by wfk"),titleWidth = 380),
                    
                    
                    
                    dashboardSidebar(
                      width=0
                      
                      , sidebarMenu(
                        menuItem(h4("日程表 "), tabName = "homed", icon = icon("home"))
                       
                      )
                    ),
                    
                   
                    #页面主题
                    dashboardBody(
                      
                      
                       
                      
                          
                          #第零页面。主界面
                          tabItem(tabName = "homed",
                                  fluidRow(
                                   
                                    box(width=2,height=900,
                                      textInput(inputId = "year1",
                                              label = "年份",
                                              value = as.numeric("2022"),
                                              width = "250px"),
                                    
                                      selectInput("selectmonth",
                                                  label =  "月份",
                                                  selected  = as.numeric("12"),
                                                  choices = c("1", "2","3", "4",
                                                              "5", "6","7", "8",
                                                              "9", "10","11", "12"),width = "250px"
                                                  
                                                  
                                      ),
                                      
                                      
                                      textInput(inputId = "day1",
                                                label = "日期",
                                                value = "1",
                                                width = "250px"),
                                    
                                    textInput(inputId = "thing1",
                                              label = "事件",
                                              value = "",
                                              width = "250px"),
                                    
                                    textInput("Test_eR", label = "",
                                              value = "",
                                              width = "250px"),
                                    textInput("Test_eR2",label = "",
                                              value = "",
                                              width = "250px"),
                                    textInput("Test_eR3",label = "",
                                              value = "",
                                              width = "250px"),
                                    textInput("Test_eR4",label = "",
                                              value = "",
                                              width = "250px"),
                                    textInput("Test_eR5",label = "",
                                              value = "",
                                              width = "250px"),
                                    textInput("Test_eR6",label = "",
                                              value = "",
                                              width = "250px"),
                                    textInput("Test_eR7",label = "",
                                              value = "",
                                              width = "250px")
                                   
                                    
                                    
                                    
                                    
                                    )
                                    
                                    
                                   , box( h2(title = "软件介绍"),width=10,height=900,
                                         h3(helpText("本日程表为武方琨编写，方便日程记录"),
                                         # tags$hr(),
                                         # imageOutput('tupian'),
                                         # tags$hr(),
                                         imageOutput('photo1',width="100%",height="800px"),
                                        
                                       
                                         )
                                         
                                    )
                                    
                                    
                                      
                                     
                                     
                                     
                                  )
                                  
                                  
                          )                
                          ))
                                     
                                 
                   





