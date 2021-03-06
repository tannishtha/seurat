% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cluster_validation.R
\name{ValidateClusters}
\alias{ValidateClusters}
\title{Cluster Validation}
\usage{
ValidateClusters(object, pc.use = NULL, top.genes = 30,
  min.connectivity = 0.01, acc.cutoff = 0.9, verbose = TRUE)
}
\arguments{
\item{object}{Seurat object}

\item{pc.use}{Which PCs to use to define genes in model construction}

\item{top.genes}{Use the top X genes for each PC in model construction}

\item{min.connectivity}{Threshold of connectedness for comparison of two
clusters}

\item{acc.cutoff}{Accuracy cutoff for classifier}

\item{verbose}{Controls whether to display progress and merging results}
}
\value{
Returns a Seurat object, object@ident has been updated with new
cluster info
}
\description{
Methods for validating the legitimacy of clusters using classification. SVMs
are used as the basis for the classification. Merging is done based on the
connectivity from an SNN graph.
}
\examples{
pbmc_small
# May throw warnings when cluster sizes are particularly small
\dontrun{
pbmc_small <- FindClusters(object = pbmc_small, reduction.type = "pca",
                           dims.use = 1:10, resolution = 1.1, save.SNN = TRUE)
pbmc_small <- ValidateClusters(pbmc_small, pc.use = 1:10)
}

}
