#Clears the environment
rm(list=ls())

#Installing packages
install.packages("")

#Navigate working directories
getwd()
setwd("/Users/adamperry/Desktop/Final_Project/Coding/R")

library(ggplot2)
library(dplyr)
library(plotly)
library(readr)
library(ggrepel)

#Load csv file
data <- read_csv('data/test/test.csv')

ggplot(data=data, aes(x=AwayPPGWOF, y=HomePPGWOF, color=Team)) +
  geom_point(size=3) +
  geom_abline(intercept = 0, slope = 1, colour = "gray30") +
  scale_color_manual(values = c("#EF0107", "#95BFE5", "#0057B8", "#99D6EA", "#034694", 
                                "#1B458F", "#003399", "#003090", "#C8102E", "#6CABDD",
                                "#DA291C", "#FFFFFF", "#EE2737", "#D71920", "#FFFFFF",
                                "#1BB1E7", "#FDB913")) +
  #data labels
  geom_text_repel(aes(label = Team), 
                  size = 3.5, 
                  colour = "white",
                  min.segment.length = Inf)  +
  #axis editing
  expand_limits(x = c(0.5, 3), y = c(0.5, 3)) +
  scale_x_continuous(breaks = seq(0.5, 3, 0.5)) +
  scale_y_continuous(breaks = seq(0.5, 3, 0.5)) +
  labs(x = "Away Points Per Game",
       y = "Home Points Per Game",
       title = "Points Per Game Without Fans",
       subtitle = "2019/20 and 2020/21 Seasons") +
  #aesthetics 
  theme_minimal() +
  theme(legend.position = "none", 
        panel.grid.minor = element_blank(),
        plot.background = element_rect(fill = "#000000"),
        panel.background = element_rect(fill = "#000000", 
                                        colour = "#000000",
                                        size = 2, 
                                        linetype = "solid"),
        panel.grid.major = element_line(size = 0.5, 
                                        linetype = 'solid',
                                        colour = "gray30"),
        axis.title.x = element_text(size = 16, 
                                    face = "bold", 
                                    colour = "white"),
        axis.title.y = element_text(size = 16, 
                                    face = "bold", 
                                    colour = "white"),
        axis.text.x = element_text(size = 12,
                                     colour = "white"),
        axis.text.y = element_text(size = 12,
                                   colour = "white"),
        plot.title = element_text(face = "bold", 
                                  colour = "white", 
                                  size = 18,
                                  hjust = 0.5),
        plot.subtitle = element_text(colour = "white", 
                                  size = 16,
                                  hjust = 0.5))