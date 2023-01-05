# RTutorCashTransfersAndCognitiveDevelopment

RTutor Problem Set about cash transfers and early childhood cognitive development. This package constitutes an interactive R problem set based on the RTutor package (https://github.com/skranz/RTutor).

The problem set "Cash Transfers and Child Development – An Interactive Analysis with R" takes the user on a data-driven journey through the economic paper "Cash Transfers, Behavioral Changes, and Cognitive Development in Early Childhood: Evidence from a Randomized Experiment" by Karen Macours, Norbert Schady and Renos Vakis (2012). It deals with the question if and how cash transfers influence the early childhood cognitive development of children. In an interactive way, the user is able to work along the analytic steps of the paper to discover its economic findings, as well as explanations of the economic theory behind it. The original paper can be found on https://www.aeaweb.org/articles?id=10.1257/app.4.2.247

## 1. Installation

RTutor and this package is hosted on Github. To install everything, run the following code in your R console.
```s
install.packages("RTutor",repos = c("https://skranz-repo.github.io/drat/",getOption("repos")))

if (!require(devtools))
  install.packages("devtools")

devtools::install_github("LuisFiegl/RTutorCashTransfersAndCognitiveDevelopment")
```

## 2. Show and work on the problem set
To start the problem set first create a working directory in which files like the data sets and your solution will be stored. Then adapt and run the following code.
```s
library(RTutorCashTransfersAndCognitiveDevelopment)

# Adapt your working directory to an existing folder
setwd("C:/problemsets/RTutorCashTransfersAndCognitiveDevelopment")
# Adapt your user name
run.ps(user.name="Jon Doe", package="RTutorCashTransfersAndCognitiveDevelopment",
       auto.save.code=TRUE, clear.user=FALSE)
```
If everything works fine, a browser window should open, in which you can start exploring the problem set.
