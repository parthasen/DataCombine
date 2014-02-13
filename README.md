DataCombine
======

### Christopher Gandrud

### Version 0.1.17

### Please report any bugs or suggestions for improvement at: <https://github.com/christophergandrud/DataCombine/issues>.

---

**DataCombine** is a set of miscellaneous tools intended to make combining data sets--especially time-series cross-section data--easier. The package is continually being developed as I turn lines of code that I frequently use into single functions. It currently includes the following functions:

- `dMerge`: merges 2 data frames and report/drop/keeps only duplicates.

- `DropNA`: drops rows from a data frame when they have missing (NA) values on a given variable(s).

- `FillIn`: fills in missing values of a variable from one data frame with the values from another variable.

- `FindReplace`: replaces multiple patterns found in a character string column of a data frame.

- `grepl.sub`: subsets a data frame if a specified pattern is found in a character string.

- `MoveFront`: moves variables to the front of a data frame. This can be useful if you have a data frame with many variables and want to move a variable or variables to the front.

- `PercChange`: calculates the percentage change from a specified lag, including within groups.

- `shift`: creates lag and lead variables, including for time-series cross-sectional data. The shifted variable is returned to a new vector. This function is largely based on TszKin Julian's `shift` function: <http://ctszkin.com/2012/03/11/generating-a-laglead-variables/>.

- `slide`: creates lag and lead variables, including for time-series cross-sectional data. The slid variable are added to the original data frame. This expands the capabilities of `shift`.

- `rmExcept`: removes all objects from a workspace except those specified by the user.

- `TimeFill`: creates a continuous `Unit`-`Time`-`Dummy` data frame from a data frame with `Unit`-`Start`-`End` times.

- `VarDrop`: drops one or more variables from a data frame.

---

## Updates

I will continue to add to the package as I build data sets and run across other pesky tasks I do repeatedly that would be simpler if they were a function.

---

## Installation

**DataCombine** is on [CRAN](http://cran.r-project.org/). 

You can also install the most recent stable version with `install_github` from the [devtools](https://github.com/hadley/devtools):

```
devtools::install_github("DataCombine", "christophergandrud")
```