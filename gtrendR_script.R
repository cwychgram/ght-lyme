library("gtrendR")

Sys.setenv(GOOGLE_TRENDS_KEY="") 

dmas <- read.csv("DMA_codes.csv")

dmas <- paste(dmas$Metro_code)

Sys.Date()

output_directory <- paste("ld_output/", Sys.Date(), sep = "")

dir.create(output_directory)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2004-01-01",
  time.endDate = "2004-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_04"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2005-01-01",
  time.endDate = "2005-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_05"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2006-01-01",
  time.endDate = "2006-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_06"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2007-01-01",
  time.endDate = "2007-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_07"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2008-01-01",
  time.endDate = "2008-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_08"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2009-01-01",
  time.endDate = "2009-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_09"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2010-01-01",
  time.endDate = "2010-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_10"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2011-01-01",
  time.endDate = "2011-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_11"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2012-01-01",
  time.endDate = "2012-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_12"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2013-01-01",
  time.endDate = "2013-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_13"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2014-01-01",
  time.endDate = "2014-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_14"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2015-01-01",
  time.endDate = "2015-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_15"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2016-01-01",
  time.endDate = "2016-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_16"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2017-01-01",
  time.endDate = "2017-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_17"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2018-01-01",
  time.endDate = "2018-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_18"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2019-01-01",
  time.endDate = "2019-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_19"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2020-01-01",
  time.endDate = "2020-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_20"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)

Sys.sleep(42)

getTimelinesForHealth(
  batch_size = 1,
  year_batch = "1 year",
  time.startDate = "2021-01-01",
  time.endDate = "2021-12-31",
  timelineResolutions = c("year"),
  terms = c("lyme disease"),
  names = c("lymedisease_21"),
  geoRestriction.regions = c(),
  geoRestriction.countries = c(),
  geoRestriction.dmas = dmas,
  output_directory = output_directory
)