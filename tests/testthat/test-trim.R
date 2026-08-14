test_that("trim keeps matching reads", {
  reads <- data.frame(sequence = c("AAAGTGCCAGC", "TTTTT"), stringsAsFactors = FALSE)
  out <- trim_primers(reads, forward = "GTGCCAGC")
  expect_equal(nrow(out), 1)
})
