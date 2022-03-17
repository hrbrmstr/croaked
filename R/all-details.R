#' Get All Details
#'
#' Get EoL dates of all cycles of a given product.
#'
#' @param product length 1 character vector product name (e.g. `python`)
#' @return data frame
#' @export
#' @examples
#' all_details("macos")
all_details <- function(product) {

  product <- as.character(product[1])

  httr::GET(
    url = sprintf("https://endoflife.date/api/%s.json", product)
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  out

}