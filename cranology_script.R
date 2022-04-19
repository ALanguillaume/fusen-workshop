## Get number of packages on CRAN at a given date

date <- "2020-03-15"
# date <- "2023-05-15"

n_packages <- data.frame(
    date = date,
    n = nrow(
      available.packages(
        repos = sprintf("https://mran.microsoft.com/snapshot/%s", date)
      )
    )
  )

n_packages
