#' Trim sequencing primers from reads
#'
#' @param reads data.frame of reads
#' @param forward forward primer sequence
#' @export
trim_primers <- function(reads, forward) {
  keep <- grepl(forward, reads$sequence, fixed = TRUE)
  reads[keep, , drop = FALSE]
}

#' Per-amplicon quality summary
#' @param reads data.frame of reads
#' @export
per_amplicon_qc <- function(reads) {
  aggregate(quality ~ amplicon, data = reads, FUN = median)
}
