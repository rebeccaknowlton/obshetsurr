\name{estimate.PTE}
\alias{estimate.PTE}
\title{
Estimate the proportion of the treatment effect explained
}
\description{
Fits base learners using the specified type of model on the training data, and uses those models to calculate delta, delta.s, and R.s on the testing set.
}
\usage{
estimate.PTE(df.train, df.test, type, numeric_predictors, categorical_predictors, 
  use.actual.control.S)
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
  \item{use.actual.control.S}{
TRUE or FALSE, if user prefers to use the actual observed values for the surrogate in the control group instead of predicting values from the base learners.
}
}
\value{
A dataframe is returned, which is the df.test argument with new columns appended for the estimates of delta, delta.s, and R.s.
}
\keyword{internal}