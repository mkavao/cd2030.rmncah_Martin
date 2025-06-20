% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/6_service_utilization.R
\name{filter_service_utilization_map}
\alias{filter_service_utilization_map}
\title{Filter Service Utilization Data for a Specific Region and Indicator}
\usage{
filter_service_utilization_map(
  .data,
  indicator = c("opd", "ipd", "under5", "cfr", "deaths"),
  region = NULL
)
}
\arguments{
\item{.data}{A \code{cd_service_utilization} object created by \code{\link[=compute_service_utilization]{compute_service_utilization()}}.}

\item{indicator}{Character. The indicator to visualize. Options include \code{"opd"}, \code{"ipd"},
\code{"under5"} (proportion under 5), \code{"cfr"} (case fatality rate), or \code{"deaths"} (proportion of under-5 deaths).}

\item{region}{Optional. A single region name to filter when data is subnational (\code{adminlevel_1} or \code{district}).}
}
\value{
A tibble of class \code{cd_service_utilization_map}, with an attached \code{indicator} attribute for plotting.
}
\description{
Prepares a \code{cd_service_utilization} object for non-spatial plotting (e.g., time series)
by filtering by administrative region and indicator type.
}
\details{
This function:
\itemize{
\item Validates the \code{.data} class and \code{indicator} input
\item If data is subnational, filters it by the specified \code{region}
\item If data is national, ensures \code{region} is not provided
\item Returns a filtered tibble tagged with \code{cd_service_utilization_map} class for downstream plotting
}
}
\examples{
\dontrun{
# Filter IPD indicator for Central region
filtered <- filter_service_utilization_map(service_data, indicator = "ipd", region = "Central")
}

}
