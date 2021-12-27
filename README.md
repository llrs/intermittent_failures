# Intermittent failures

<!-- badges: start -->

<!-- badges: end -->

The goal of this repository is to track intermittent failures on CRAN packages checks.  
Failures defined as warnings, notes or errors without change on:

-   R version used (if not stable the same svn snapshot)
-   The package version (Note that CRAN might modify a package without changing the version)
-   Their dependencies

**Reasons** of these failures might be because the packages depend on:

-   Random generation numbers
-   Flacky external resources
-   Other ?

**Why** is this important?

Because package maintainers of dependencies of that package, R core and CRAN team need to check if the failures are false positives.

------------------------------------------------------------------------

This repository started because it was [suggested as a step that the R-repositories working group could do](https://github.com/RConsortium/r-repositories-wg/issues/7).
