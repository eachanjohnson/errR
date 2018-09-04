#' @title Simple error handling
#' @description Binary operator for terse error handling. If the left-hand-side results in an error, the right-hand-side handles it
#' an \code{expression} or a \code{function}, which is applied to the raised \code{Error} object.
#' @param try_expression Passed to \code{expr} argument of \code{tryCatch}.
#' @param catch_expression Passed to \code{error} argument of \code{tryCatch}. Can be an \code{expression} or a \code{function} which
#' is applied to the raised \code{Error} object.
#' @param ... Other arguments.
#' @return Result of \code{try_expression} or \code{catch_expression}.
#' @export
`%except%` <- function (try_expression, catch_expression) {

  error_handler <- function(e) {
    if ( inherits(catch_expression, 'function') ) {
      catch_expression(e)
    } else {
      catch_expression
    }
  }

  tryCatch(try_expression,
           error=error_handler)

}
