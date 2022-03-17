#' Retrieve a list of tracked products
#'
#' Each product name can be used for the other API endpoints.
#'
#' @return character vector
#' @export
#' @examples
#' available_products()
available_products <- function() {

  httr::GET(
    url = "https://endoflife.date/api/all.json"
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  out

}