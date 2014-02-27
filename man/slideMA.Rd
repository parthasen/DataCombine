\name{slideMA}
\alias{slideMA}
\title{Create a moving average for a period before or after each time point for a given variable}
\usage{
slideMA(data, Var, GroupVar = NULL, periodBound = -3, offset = 1,
  NewVar = NULL, reminder = TRUE)
}
\arguments{
  \item{data}{a data frame object.}

  \item{Var}{a character string naming the variable you
  would like to create the lag/lead moving averages from.}

  \item{GroupVar}{a character string naming the variable
  grouping the units within which \code{Var} will be turned
  into slid moving averages. If \code{GroupVar = NULL} then
  the whole variable is slid up or down and moving averages
  will be created. This is similar to \code{\link{shift}},
  though \code{shift} returns the slid data to a new vector
  rather than the original data frame.}

  \item{periodBound}{numeric. The time point for the outer
  bound of the time period overwhich to create the moving
  averages. The default is \code{-3}, i.e. the period
  begins three time periods before a given time period. Can
  also be positive for leading moving averages.}

  \item{offset}{numeric. How many time increments away from
  a given increment to begin the moving average time
  period. The default is \code{1}. Note: must be positive.}

  \item{NewVar}{a character string specifying the name for
  the new variable to place the slid data in.}

  \item{reminder}{logical. Whether or not to remind you to
  order your data by the \code{GroupVar} and time variable
  before running \code{slideMA}.}
}
\value{
a data frame
}
\description{
Create a moving average for a period before or after each
time point for a given variable
}
\examples{
# Create dummy data
 A <- B <- C <- 1:20
 ID <- sort(rep(seq(1:4), 5))
 Data <- data.frame(ID, A, B, C)

 # Lead the variable by two time units
 DataSlidMA1 <- slideMA(Data, Var = "A", NewVar = "ALead_MA",
                 periodBound = 3)

 # Lag the variable one time unit by ID group
 DataSlidMA2 <- slideMA(data = Data, Var = "B", GroupVar = "ID",
                NewVar = "BLag_MA", periodBound = -3, offset = 2)
}
\seealso{
\code{\link{shift}}, \code{\link{slide}},
\code{\link{ddply}}
}
