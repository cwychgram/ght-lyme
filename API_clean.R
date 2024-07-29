library(crosswalkr)
library(dplyr)
library(matrixStats)
library(purrr)
library(tidyr)

# extraction 01

setwd("ld_output/2022-08-04")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext01 <- allData %>%
  gather(dma, ext01, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext01$year <- format(as.Date(ext01$year, format = "%Y-%m-%d"), "%Y")

# extraction 02

setwd("../2022-08-05")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext02 <- allData %>%
  gather(dma, ext02, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext02$year <- format(as.Date(ext02$year, format = "%Y-%m-%d"), "%Y")

# extraction 03

setwd("../2022-08-08")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext03 <- allData %>%
  gather(dma, ext03, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext03$year <- format(as.Date(ext03$year, format = "%Y-%m-%d"), "%Y")

# extraction 04 

setwd("../2022-08-09")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext04 <- allData %>%
  gather(dma, ext04, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext04$year <- format(as.Date(ext04$year, format = "%Y-%m-%d"), "%Y")

# extraction 05 

setwd("../2022-08-10")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext05 <- allData %>%
  gather(dma, ext05, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext05$year <- format(as.Date(ext05$year, format = "%Y-%m-%d"), "%Y")

# extraction 06

setwd("../2022-08-11")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext06 <- allData %>%
  gather(dma, ext06, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext06$year <- format(as.Date(ext06$year, format = "%Y-%m-%d"), "%Y")

# extraction 07

setwd("../2022-08-16")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext07 <- allData %>%
  gather(dma, ext07, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext07$year <- format(as.Date(ext07$year, format = "%Y-%m-%d"), "%Y")

# extraction 08 

setwd("../2022-08-17")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext08 <- allData %>%
  gather(dma, ext08, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext08$year <- format(as.Date(ext08$year, format = "%Y-%m-%d"), "%Y")

# extraction 09 

setwd("../2022-08-18")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext09 <- allData %>%
  gather(dma, ext09, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext09$year <- format(as.Date(ext09$year, format = "%Y-%m-%d"), "%Y")

# extraction 10 

setwd("../2022-08-19")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext10 <- allData %>%
  gather(dma, ext10, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext10$year <- format(as.Date(ext10$year, format = "%Y-%m-%d"), "%Y")

# extraction 11 

setwd("../2022-08-22")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext11 <- allData %>%
  gather(dma, ext11, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext11$year <- format(as.Date(ext11$year, format = "%Y-%m-%d"), "%Y")

# extraction 12 

setwd("../2022-08-23")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext12 <- allData %>%
  gather(dma, ext12, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext12$year <- format(as.Date(ext12$year, format = "%Y-%m-%d"), "%Y")

# extraction 13

setwd("../2022-08-24")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext13 <- allData %>%
  gather(dma, ext13, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext13$year <- format(as.Date(ext13$year, format = "%Y-%m-%d"), "%Y")

# extraction 14

setwd("../2022-08-25")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext14 <- allData %>%
  gather(dma, ext14, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext14$year <- format(as.Date(ext14$year, format = "%Y-%m-%d"), "%Y")

# extraction 15 

setwd("../2022-08-26")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext15 <- allData %>%
  gather(dma, ext15, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext15$year <- format(as.Date(ext15$year, format = "%Y-%m-%d"), "%Y")

# extraction 16 

setwd("../2022-08-27")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext16 <- allData %>%
  gather(dma, ext16, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext16$year <- format(as.Date(ext16$year, format = "%Y-%m-%d"), "%Y")

# extraction 17 

setwd("../2022-08-29")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext17 <- allData %>%
  gather(dma, ext17, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext17$year <- format(as.Date(ext17$year, format = "%Y-%m-%d"), "%Y")

# extraction 18 

setwd("../2022-08-30")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext18 <- allData %>%
  gather(dma, ext18, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext18$year <- format(as.Date(ext18$year, format = "%Y-%m-%d"), "%Y")

# extraction 19 

setwd("../2022-08-31")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext19 <- allData %>%
  gather(dma, ext19, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext19$year <- format(as.Date(ext19$year, format = "%Y-%m-%d"), "%Y")

# extraction 20 

setwd("../2022-09-01")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext20 <- allData %>%
  gather(dma, ext20, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext20$year <- format(as.Date(ext20$year, format = "%Y-%m-%d"), "%Y")

# extraction 21 

setwd("../2022-09-02")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext21 <- allData %>%
  gather(dma, ext21, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext21$year <- format(as.Date(ext21$year, format = "%Y-%m-%d"), "%Y")

# extraction 22 

setwd("../2022-09-03")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext22 <- allData %>%
  gather(dma, ext22, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext22$year <- format(as.Date(ext22$year, format = "%Y-%m-%d"), "%Y")

# extraction 23 

setwd("../2022-09-04")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext23 <- allData %>%
  gather(dma, ext23, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext23$year <- format(as.Date(ext23$year, format = "%Y-%m-%d"), "%Y")

# extraction 24 

setwd("../2022-09-05")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext24 <- allData %>%
  gather(dma, ext24, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext24$year <- format(as.Date(ext24$year, format = "%Y-%m-%d"), "%Y")

# extraction 25 

setwd("../2022-09-06")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext25 <- allData %>%
  gather(dma, ext25, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext25$year <- format(as.Date(ext25$year, format = "%Y-%m-%d"), "%Y")

# extraction 26

setwd("../2022-09-07")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext26 <- allData %>%
  gather(dma, ext26, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext26$year <- format(as.Date(ext26$year, format = "%Y-%m-%d"), "%Y")

# extraction 27

setwd("../2022-09-08")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext27 <- allData %>%
  gather(dma, ext27, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext27$year <- format(as.Date(ext27$year, format = "%Y-%m-%d"), "%Y")

# extraction 28

setwd("../2022-09-09")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext28 <- allData %>%
  gather(dma, ext28, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext28$year <- format(as.Date(ext28$year, format = "%Y-%m-%d"), "%Y")

# extraction 29

setwd("../2022-09-10")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext29 <- allData %>%
  gather(dma, ext29, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext29$year <- format(as.Date(ext29$year, format = "%Y-%m-%d"), "%Y")

# extraction 30

setwd("../2022-09-11")

temp <- list.files(pattern = "*.csv")

allData <- do.call("rbind", lapply(Sys.glob(temp), read.csv))

ext30 <- allData %>%
  gather(dma, ext30, X500:X881) %>%
  separate(dma, c("tobedeleted", "dma"), sep = 1) %>%
  dplyr::select(-c(tobedeleted)) %>%
  rename(year = timestamp)

ext30$year <- format(as.Date(ext30$year, format = "%Y-%m-%d"), "%Y")

# join all extractions

setwd("../../")

extAll <- list(ext01, ext02, ext03, ext04, ext05, ext06, ext07, ext08, ext09, ext10,
               ext11, ext12, ext13, ext14, ext15, ext16, ext17, ext18, ext19, ext20,
               ext21, ext22, ext23, ext24, ext25, ext26, ext27, ext28, ext29, ext30) %>%
  reduce(left_join, by = c("year", "dma"))

extAll$mean <- rowMeans(extAll[, c(3:32)], na.rm = TRUE)