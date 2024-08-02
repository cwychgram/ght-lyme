library(dplyr)
library(pracma)
library(scales)
library(sf)

df <- read.csv("minimal_data_set.csv") 

# 2011-2019 percent change using linear weighted average of 2017-2019 as end value

pct_chg <- df %>%
  group_by(dma_code) %>%
  mutate(search_ld_wa = movavg(search_ld, 3, "w")) %>%
  as.data.frame() %>%
  st_as_sf()

pct_chg <- pct_chg %>%
  group_by(dma_code) %>%
  mutate(pct_chg = ((search_ld_wa - lag(search_ld_wa, 8))/lag(search_ld_wa, 8)) * 100) %>%
  filter(year == 2019) %>%
  ungroup() %>%
  as.data.frame() %>%
  st_as_sf()

# summarize variables by region

df$cenregnm <- factor(df$cenregnm, levels = c("Northeast", "Midwest", "South", "West"))

df <- mutate(df, region_new = case_when(
  state %in% c("Connecticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont") ~ "New England",
  state %in% c("Delaware", "Maryland", "New Jersey", "New York", "Pennsylvania", "Virginia", "West Virginia") ~ "Mid-Atlantic",
  cenregnm == "Midwest" ~ "Midwest",
  cenregnm == "West" ~ "West",
  TRUE ~ "South")
)

df$region_new <- factor(df$region_new, levels = c("New England", "Mid-Atlantic", "Midwest", "South", "West"))

gt_2011_2013 <- df %>%
  filter(between(year, 2011, 2013))
gt_2014_2016 <- df %>% 
  filter(between(year, 2014, 2016))
gt_2017_2019 <- df %>% 
  filter(between(year, 2017, 2019))
gt_2011_2019 <- df %>% 
  filter(between(year, 2011, 2019))

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(search_ld, na.rm = TRUE),
            sd = sd(search_ld, na.rm = TRUE),
            min = min(search_ld, na.rm = TRUE),
            max = max(search_ld, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(elev, na.rm = TRUE),
            sd = sd(elev, na.rm = TRUE),
            min = min(elev, na.rm = TRUE),
            max = max(elev, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(for1, na.rm = TRUE),
            sd = sd(for1, na.rm = TRUE),
            min = min(for1, na.rm = TRUE),
            max = max(for1, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(for3, na.rm = TRUE),
            sd = sd(for3, na.rm = TRUE),
            min = min(for3, na.rm = TRUE),
            max = max(for3, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(dev1, na.rm = TRUE),
            sd = sd(dev1, na.rm = TRUE),
            min = min(dev1, na.rm = TRUE),
            max = max(dev1, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(max_ndvi, na.rm = TRUE),
            sd = sd(max_ndvi, na.rm = TRUE),
            min = min(max_ndvi, na.rm = TRUE),
            max = max(max_ndvi, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(ppt_winter_in, na.rm = TRUE),
            sd = sd(ppt_winter_in, na.rm = TRUE),
            min = min(ppt_winter_in, na.rm = TRUE),
            max = max(ppt_winter_in, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(ppt_spring_in, na.rm = TRUE),
            sd = sd(ppt_spring_in, na.rm = TRUE),
            min = min(ppt_spring_in, na.rm = TRUE),
            max = max(ppt_spring_in, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(ppt_summer_in, na.rm = TRUE),
            sd = sd(ppt_summer_in, na.rm = TRUE),
            min = min(ppt_summer_in, na.rm = TRUE),
            max = max(ppt_summer_in, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(ppt_fall_in, na.rm = TRUE),
            sd = sd(ppt_fall_in, na.rm = TRUE),
            min = min(ppt_fall_in, na.rm = TRUE),
            max = max(ppt_fall_in, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(ppt_annual_in, na.rm = TRUE),
            sd = sd(ppt_annual_in, na.rm = TRUE),
            min = min(ppt_annual_in, na.rm = TRUE),
            max = max(ppt_annual_in, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(tmean_winter_f, na.rm = TRUE),
            sd = sd(tmean_winter_f, na.rm = TRUE),
            min = min(tmean_winter_f, na.rm = TRUE),
            max = max(tmean_winter_f, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(tmean_spring_f, na.rm = TRUE),
            sd = sd(tmean_spring_f, na.rm = TRUE),
            min = min(tmean_spring_f, na.rm = TRUE),
            max = max(tmean_spring_f, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(tmean_summer_f, na.rm = TRUE),
            sd = sd(tmean_summer_f, na.rm = TRUE),
            min = min(tmean_summer_f, na.rm = TRUE),
            max = max(tmean_summer_f, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(tmean_fall_f, na.rm = TRUE),
            sd = sd(tmean_fall_f, na.rm = TRUE),
            min = min(tmean_fall_f, na.rm = TRUE),
            max = max(tmean_fall_f, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

gt_2011_2019 %>%
  group_by(region_new) %>%
  summarise(mean = mean(tmean_annual_f, na.rm = TRUE),
            sd = sd(tmean_annual_f, na.rm = TRUE),
            min = min(tmean_annual_f, na.rm = TRUE),
            max = max(tmean_annual_f, na.rm = TRUE)) %>%
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, 1) %>%
  mutate(cat = paste(mean, " ± ", sd, " (", min, " - ", max, ")", sep = "")) %>%
  dplyr::select(cat) %>%
  print(., row.names = FALSE)

tapply(gt_2011_2013$cases, gt_2011_2013$region_new, sum)
tapply(gt_2014_2016$cases, gt_2014_2016$region_new, sum)
tapply(gt_2017_2019$cases, gt_2017_2019$region_new, sum)
tapply(gt_2011_2019$cases, gt_2011_2019$region_new, sum)

sum(gt_2011_2019$cases)
sum(gt_2011_2013$cases)
sum(gt_2014_2016$cases)
sum(gt_2017_2019$cases)

tapply(gt_2011_2013$inc, gt_2011_2013$region_new, summary)
tapply(gt_2014_2016$inc, gt_2014_2016$region_new, summary)
tapply(gt_2017_2019$inc, gt_2017_2019$region_new, summary)
tapply(gt_2011_2019$inc, gt_2011_2019$region_new, summary)