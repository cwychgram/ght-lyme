library(dplyr)
library(geepack)
library(sf)
library(sfdep)
library(splines)

df <- read.csv("minimal_data_set.csv") 

df$search_ld_100 <- df$search_ld / 100
df$elev_25 <- df$elev / 25
df$max_ndvi_100 <- df$max_ndvi * 100

model0 <- geeglm(cases ~ offset(log(pop)), 
                 id = dma_code, 
                 family = poisson, 
                 corstr = "ar1",
                 data = df)

summary(model0)

model1 <- geeglm(cases ~ offset(log(pop)) + search_ld_100, 
                 id = dma_code,
                 family = poisson, 
                 corstr = "ar1",
                 data = df)

summary(model1)

modelfin <- geeglm(cases ~ offset(log(pop)) + 
                     search_ld_100 +
                     for1 +
                     for3 +
                     dev1 +
                     max_ndvi_100 +
                     ppt_summer_in +
                     ppt_spring_in +
                     ppt_fall_in +
                     tmean_spring_f
                   ,
                   id = dma_code,
                   family = poisson,
                   corstr = "ar1",
                   data = df)

summary(modelfin)

modelfin_spl <- geeglm(cases ~ offset(log(pop)) + 
                         search_ld_100 +
                         for1 +
                         for3 +
                         dev1 +
                         max_ndvi_100 +
                         ppt_spring_in +
                         ppt_summer_in +
                         ppt_fall_in +
                         ns(y_km_25, df = 4)
                       ,
                       id = dma_code,
                       family = poisson,
                       corstr = "ar1",
                       data = df)

summary(modelfin_spl)

df$res0 <- residuals(model0, type = "pearson")
df$res0 <- as.vector(df$res0)
df$res1 <- residuals(model1, type = "pearson")
df$res1 <- as.vector(df$res1)
df$resfin <- residuals(modelfin, type = "pearson")
df$resfin <- as.vector(df$resfin)
df$resfin_spl <- residuals(modelfin_spl, type = "pearson")
df$resfin_spl <- as.vector(df$resfin_spl)

dmas <- st_read("shapefiles/DMA_Boundaries_Simplified.shp")

df$dma_code <- as.character(df$dma_code)

data <- df %>%
  left_join(dmas, by = c("dma_code" = "ID"))

data <- data %>%
  group_by(year) %>%
  mutate(nb = sfdep::st_contiguity(geometry),
         wts = sfdep::st_weights(nb)) %>%
  ungroup() %>%
  as.data.frame() %>%
  st_as_sf()

global_moran_res0 <- data %>%
  as.data.frame() %>%
  group_by(year) %>%
  mutate(lisa_res0 = sfweight::local_moran(res0, nb, wts)) %>%
  summarize(gi_res0 = sum(lisa_res0[, 1]) / 202)

global_moran_res1 <- data %>%
  as.data.frame() %>%
  group_by(year) %>%
  mutate(lisa_res1 = sfweight::local_moran(res1, nb, wts)) %>%
  summarize(gi_res1 = sum(lisa_res1[, 1]) / 202)

global_moran_resfin <- data %>%
  as.data.frame() %>%
  group_by(year) %>%
  mutate(lisa_resfin = sfweight::local_moran(resfin, nb, wts)) %>%
  summarize(gi_resfin = sum(lisa_resfin[, 1]) / 202)

global_moran_resfin_spl <- data %>%
  as.data.frame() %>%
  group_by(year) %>%
  mutate(lisa_resfin_spl = sfweight::local_moran(resfin_spl, nb, wts)) %>%
  summarize(gi_resfin_spl = sum(lisa_resfin_spl[, 1]) / 202)

comps <- cbind(global_moran_res0, global_moran_res1, global_moran_resfin, global_moran_resfin_spl)
comps
summary(comps[ , c(2, 4, 6, 8)])

lisa <- data %>%
  as.data.frame() %>%
  group_by(year) %>%
  mutate(lisa_resfin_spl = sfweight::local_moran(resfin_spl, nb, wts)) %>%
  as.data.frame() %>%
  st_as_sf()

lisa$cat <- lisa$lisa_resfin_spl[, 6]
