% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/get_model.R
\name{predict_model.time_series}
\alias{predict_model.time_series}
\title{Predict a Time Series model}
\usage{
predict_model.time_series(model, x, n.ahead = 1, labels = NULL,
  train = NULL)
}
\arguments{
\item{model}{a model object}

\item{x}{the input data}

\item{n.ahead}{number of periods to be forecasted}

\item{labels}{the labels of the data}

\item{train}{training observations in the data}
}
\description{
Predict a Time Series model found by get_model. The output is still very unreliable and should be worked on in the future.
}
\examples{
data('EIA')
train <- 1:(nrow(data) - 5)
labels <- data$Date
x <- data$Value

model <- get_model(x = x,method = 'time_series', lag = 2, labels = labels, family = gaussian('log'), train = train )
res <- predict(model, x = x, n.ahead = 2, labels = labels, train = train)
}
\author{
Emiel Veersma
}
\keyword{vfmodels}

