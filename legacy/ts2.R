ts2 = function (data = NA, start = 1, end = numeric(), frequency = 1,
          deltat = 1, ts.eps = getOption("ts.eps"), class = if (nseries >
                                                                1) c("mts", "ts", "matrix") else "ts", names = if (!is.null(dimnames(data))) colnames(data) else paste("Series",
                                                                                                                                                                       seq(nseries)))
{
  if (is.data.frame(data))
    data <- data.matrix(data)
  if (is.matrix(data)) {
    nseries <- ncol(data)
    ndata <- nrow(data)
    dimnames(data) <- list(NULL, names)
  }
  else {
    nseries <- 1
    ndata <- length(data)
  }
  if (ndata == 0)
    stop("'ts' object must have one or more observations")
  if (missing(frequency))
    frequency <- 1/deltat
  else if (missing(deltat))
    deltat <- 1/frequency
  if (frequency > 1 && abs(frequency - round(frequency)) <
      ts.eps)
    frequency <- round(frequency)
  if (length(start) > 1L) {
    start <- start[1L] + (start[2L] - 1)/frequency
  }
  if (length(end) > 1L) {
    end <- end[1L] + (end[2L] - 1)/frequency
  }
  if (missing(end))
    end <- start + (ndata - 1)/frequency
  else if (missing(start))
    start <- end - (ndata - 1)/frequency
  if (start > end)
    stop("'start' cannot be after 'end'")
  nobs <- floor((end - start) * frequency + 1.01)
  if (nobs != ndata)
    data <- if (NCOL(data) == 1) {
      if (ndata < nobs)
        rep_len(data, nobs)
      else if (ndata > nobs)
        data[1L:nobs]
    }
  else {
    if (ndata < nobs)
      data[rep_len(1L:ndata, nobs), ]
    else if (ndata > nobs)
      data[1L:nobs, ]
  }
  attr(data, "tsp") <- c(start, end, frequency)
  if (!is.null(class) && class != "none")
    attr(data, "class") <- class
  data
}
