% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rDNA.R
\name{dna_plotCoordinates}
\alias{dna_plotCoordinates}
\title{Plots an MDS scatterplot from dna.cluster objects}
\usage{
dna_plotCoordinates(clust, what = "MDS", dimensions = c(1, 2),
  draw_polygons = TRUE, alpha = 0.25, jitter = NULL, seed = 12345,
  label = FALSE, label_size = 3.5, point_size = 1,
  label_background = FALSE, font_colour = "black", expand = 0,
  stress = TRUE, truncate = 40, custom_colours = character(),
  custom_shape = character(), axis_labels = character(),
  clust_method = "pam", title = "auto", ...)
}
\arguments{
\item{clust}{A \code{dna_cluster} object created by the \link{dna_cluster}
function.}

\item{what}{Choose either "MDS" to plot the results of multidimensional
scaling or "FA" to plot two factors of the factor analysis.}

\item{dimensions}{Provide two numeric values to determine which dimensions to
plot. The default, c(1, 2), will plot dimension 1 and dimension 2.}

\item{draw_polygons}{Logical. Should clusters be highlighted with coloured
polygons?}

\item{alpha}{The alpha level of the polygons drawn when \code{draw.clusters =
"polygon"}.}

\item{jitter}{Takes either one value, to control the width of the jittering
of points, two values to control width and height of the jittering of
points (e.g., c(.l, .2)) or \code{character()} to turn off the jittering of
points.}

\item{seed}{Seed for jittering.}

\item{label}{Logical. Should labels be plotted?}

\item{label_size, font_colour, label_background}{Control the label size, font
colour of the labels and if a background should be displayed when
\code{label = TRUE}. label_size takes numeric values, font_colour takes a
character string with a valid colour value and label_background can be
either TRUE or FALSE.}

\item{point_size}{Size of the points in the scatterplot.}

\item{expand}{Expand x- and y-axis (e.g., to make room for labels). The first
value is the units by which the x-axis is expanded in both directions, the
second controls expansion of the y axis.}

\item{stress}{Should stress from the MDS be displayed on the plot.}

\item{truncate}{Sets the number of characters to which labels should be
truncated. Value \code{Inf} turns off truncation.}

\item{custom_colours}{Manually provide colours for the points and polygons.}

\item{custom_shape}{Manually provide shapes to use for the scatterplot.}

\item{axis_labels}{Provide custom axis labels.}

\item{clust_method}{Can be either \code{pam} for \link[cluster]{pam},
\code{"louvain"} for \link[igraph]{cluster_louvain} or \code{"inherit"} to
use the method provided by the call to \link{dna_cluster}.}

\item{title}{Title of the MDS plot.}

\item{...}{Not used. If you want to add more plot options use \code{+} and
the ggplot2 logic (see example).}
}
\description{
Plots a scatterplot with the results of non-metric multidimensional scaling
performed in \link{dna_cluster}.
}
\details{
This function is a convenience wrapper for using the \code{ggplot2} package
to make a scatterplot of the results of non-metric multidimensional scaling
performed in \link{dna_cluster}. It can also add ellipses of polygons to
highlight clusters.
}
\examples{
\dontrun{
dna_init()
conn <- dna_connection(dna_sample())
clust <- dna_cluster(conn)
mds <- dna_plotCoordinates(clust)

# Flip plot with ggplot2 command
library("ggplot2")
mds + coord_flip()
}
}
\author{
Johannes B. Gruber
}
