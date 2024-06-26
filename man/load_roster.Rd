% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_roster.R
\name{load_roster}
\alias{load_roster}
\title{Load Roster of Students from a CSV file}
\usage{
load_roster(data_folder = "data", roster_file = "roster.csv")
}
\arguments{
\item{data_folder}{Overall data folder for your recordings and data. Defaults
to 'data'}

\item{roster_file}{File name of the csv file of enrolled students
Defaults to 'roster.csv'}
}
\value{
A tibble listing the students enrolled in the class or classes.
}
\description{
This function creates a tibble from a provided csv file of students enrolled
in the class or classes
}
\examples{
load_roster()
}
