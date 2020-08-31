# ui.R
# Author: Taha Abdalzez
# Date: 26-8-2020
# Description: Shiny UI, Coursera Data Science Capstone Final Project

library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
    navbarPage("Word Predictor",
               theme = shinytheme("spacelab"),
               tabPanel("Home",
                        fluidPage(
                            titlePanel("Home"),
                            sidebarLayout(
                                sidebarPanel(
                                    textInput("userInput",
                                              "Enter a word or phrase:",
                                              value =  "",
                                              placeholder = "Enter text here"),
                                    br(),
                                    sliderInput("numPredictions", "Number of Predictions:",
                                                value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                                ),
                                mainPanel(
                                    h4("Input text"),
                                    verbatimTextOutput("userSentence"),
                                    br(),
                                    h4("Predicted words"),
                                    verbatimTextOutput("prediction1"),
                                    verbatimTextOutput("prediction2"),
                                    verbatimTextOutput("prediction3")
                                )
                            )
                        )
               ),
               tabPanel("About",
                        h3("Word Predictor"),
                        br(),
                        div("Next Word Predict is a Shiny app that uses a text
                            prediction algorithm to predict the next word(s)
                            based on text entered by a user.",
                            br(),
                            br(),
                            "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                            br(),
                            br(),
                            "Use the slider tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                            br(),
                            br(),
                        br(),
                        h3("About Me"),
                        br(),
                        div("My name is Taha Abdalzez and I am an
                            undergraduated Student of computer Engineering and mathmatices",
                            br(),

                            "My specialties include mathematics,
                            developing statistical models, predictive analytics
                            and statistical data analysis in R and Python.",
                            br(),
                            br(),
                            "I'm Ungraduated student from Benha University in
                            Cairo Egypt with a Bachelor's degree in
                            Computer Engineering ",
                            br(),
                            br(),
                            img(src = "linkedin.png"),
                            a(target = "_blank", href="https://www.linkedin.com/in/taha-abdalzez-47617b107/", "Taha Abdalzez"),
                            br()
               )))
    )
)
