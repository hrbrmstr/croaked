#' Single cycle details
#'
#' Get details of a single cycle
#'
#' @param product length 1 character vector product name (e.g. `python`)
#' @param cycle length 1 character vector with product cycle (e.g. `3.9`)
#' @return list
#' @export
#' @examples
#' cycle_details("python", "3.9")
cycle_details <- function(product, cycle) {

  product <- as.character(product[1])
  cycle <- as.character(cycle[1])

  httr::GET(
    url = sprintf("https://endoflife.date/api/%s/%s.json", product, cycle)
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  out

}