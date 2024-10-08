% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lefserPlotClad.R
\name{lefserPlotClad}
\alias{lefserPlotClad}
\title{LEfSer plot cladogram}
\usage{
lefserPlotClad(df, colors = "c", showTipLabels = FALSE, showNodeLabels = "p")
}
\arguments{
\item{df}{An object of class "lefesr_df_clades".}

\item{colors}{Colors corresponding to class 0 and 1.
Options: "c" (colorblind), "l" (lefse), "g" (greyscale).
Defaults to "c".
This argument also accepts a character(2) with two color names.}

\item{showTipLabels}{Logical. If TRUE, show tip labels. Default is FALSE.}

\item{showNodeLabels}{Label's to be shown in the tree.
Options: "p" = phylum, "c" = class, "o" = order,
"f" = family, "g" = genus, "s" = species, "t" = strain.
It can accept several options, e.g., c("p", "c").}
}
\value{
A ggtree object.
}
\description{
\code{lefserPlotClad} plots a cladogram from the results of
\code{lefserClades}.
}
\examples{
data("zeller14")
z14 <- zeller14[, zeller14$study_condition != "adenoma"]
tn <- get_terminal_nodes(rownames(z14))
z14tn <- z14[tn, ]
z14tn_ra <- relativeAb(z14tn)
resCl <- lefserClades(relab = z14tn_ra, classCol = "study_condition")
ggt <- lefserPlotClad(df = resCl)
}
