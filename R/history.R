u <- unzip("~/Downloads/intermittent_failures-history.zip")
l <- lapply(u, read.csv)
cl <- do.call("rbind", l)
library("dplyr")
library("ggplot2")
cl |> 
  group_by(Package, Flavor, Version) |> 
  count(sort = TRUE) |> 
  head(10) |> 
  knitr::kable("markdown")

cl |> 
  count(Flavor, sort = TRUE) |> 
  head(10) |> 
  knitr::kable("markdown")

cl |>
  group_by(Package) |>
  count(sort = TRUE) |>
  ggplot() +
  geom_histogram(aes(n))
