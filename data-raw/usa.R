## code to prepare `DATASET` dataset goes here

library(tidyverse)
library(USAboundaries)
library(rmapshaper)
library(grid)
library(sf)
states <- us_states() %>%
  filter(!(name %in% c("Hawaii", "Alaska", "Puerto Rico"))) %>%
  st_union() %>%
  st_cast("POLYGON") %>%
  .[22]

states <- ms_simplify(input = states)

usa_coords <- states[[1]][[1]]

usa_coords <- usa_coords / max(apply(usa_coords, 2, function(x) max(x) - min(x)))

usa_draw_data <- t(t(usa_coords) - apply(usa_coords, 2, min))

usa_draw_data[, 1] <- usa_draw_data[, 1] * 0.8 + 0.1
usa_draw_data[, 2] <- usa_draw_data[, 2] + 0.2

usethis::use_data(usa_draw_data, internal = TRUE)
