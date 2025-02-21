\name{boot.var}
\alias{boot.var}
\title{
Calculate bootstrapped variance estimates.
}
\description{
Calculates bootstrapped variance estimates of delta, delta.s, and R.s, and optionally calculates p-values for identifying strong surrogates.
}
\usage{
boot.var(df.train, df.test, type, numeric_predictors, categorical_predictors, 
  threshold, use.actual.control.S)
}
\arguments{
  \item{df.train}{
A dataframe containing training data.
}
  \item{df.test}{
A dataframe containing testing data.
}
  \item{type}{
Options are "linear", "gam", "trees", or "all"; type of base learners to use.
}
  \item{numeric_predictors}{
The column names in the dataframes that represent numeric baseline covariates.
}
  \item{categorical_predictors}{
The column names in the dataframes that represent categorical baseline covariates.
}
  \item{threshold}{
An optional threshold to test individuals for the null hypothesis that PTE > threshold.
}
  \item{use.actual.control.S}{
TRUE or FALSE, if user prefers to use the actual observed values for the surrogate in the control group instead of predicting values from the base learners.
}
}
\value{
A dataframe is returned, which is the df.test argument with new columns appended for the estimated variances of delta, delta.s, and R.s, as well as p-values if a threshold is provided.
}
\keyword{internal}