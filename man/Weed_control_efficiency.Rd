% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Weed_Indices_Functions.R
\name{Weed_control_efficiency}
\alias{Weed_control_efficiency}
\title{Weed control efficiency}
\usage{
Weed_control_efficiency(WDCP, WDTP)
}
\arguments{
\item{WDCP}{Weed density in control plot}

\item{WDTP}{Weed density in treated plot}
}
\value{
Weed control efficiency
}
\description{
Calculates the weed control efficiency
}
\examples{
temp1 <- Weed_control_efficiency (WDCP =80,WDTP =30);
temp2 <- Weed_control_efficiency( WDCP =80,WDTP =c(30,40,25,15,45) );
}
