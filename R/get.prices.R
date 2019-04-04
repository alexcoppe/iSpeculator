##'Retrieve prices of a vector of symbols from the web (yahoo)
##'
##' @title get.prices
##' @param symbols a vector of ticker symbols
##' @param from date of first price
##' @param to date of last price
##' @return an environment of OHLC data
get.prices <- function (symbols=c("AAPL", "IBM", "XOM"), from=as.Date("2014-11-01"), to=Sys.Date()) {
  prices.env <- new.env()
  quantmod::getSymbols(symbols,  env=prices.env, src = "yahoo", from=from, to=to)
  return(prices.env)
}
