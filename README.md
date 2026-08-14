# ampseqQC

Quality control for amplicon sequencing reads.

```r
library(ampseqQC)
reads <- read.csv("samples.csv")
trim_primers(reads, forward = "GTGCCAGCMGCCGCGGTAA")
```

Requires R 4.2 or newer.
