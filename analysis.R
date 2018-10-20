library(tidyverse)
load("rda/murders.rda")


p<-murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5,
           stat = "identity",
           color = "black") +
  
  coord_flip()

ggsave("figs/barplot1.png")

ggsave(file="figs/barplot1.svg", plot=p, width = 3.57, height = 6.43)

