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
data <- read_csv('data/SpursPPG.csv')


ggplot(data, aes(x = Fans1, y = HomePPG, fill = Fans1)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.3) +
  geom_col(width = 0.3) +
  geom_text(aes(label=HomePPG), 
            position=position_dodge(width=0.5), 
            vjust=-0.25, 
            size = 5,
            color ="white") +
  coord_cartesian(ylim=c(1.0, 2.0)) + 
  scale_y_continuous(breaks=seq(1.0, 2.0, 0.20)) +
  scale_fill_manual(values = c("#FFFFFF", "#2727B0")) +
  labs(x = "Fans",
       y = "Points Per Game",
       title = "Home Points Per Game",
       subtitle = "19/20 and 20/21 seasons") +
  labs(fill = "Fans1") +
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
        axis.text.x = element_text(colour = "white",
                                   size = 14),
        axis.text.y = element_text(colour = "white",
                                   size = 14),
        plot.title = element_text(face = "bold", 
                                  colour = "white", 
                                  size = 18,
                                  hjust = 0.5),
        plot.subtitle = element_text(colour = "white", 
                                     size = 16,
                                     hjust = 0.5))