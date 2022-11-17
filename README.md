---
title: "README.md"
author: "Beau Powers"
date: "2022-11-17"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Introduction

#' removes NA's 
#' Lm function
#' ggplot

#' works with numerical data sets

#' outputs

#' clean data 
#' lm function plot
#' ggplot 

## Installation

Package depends on tidyverse

'''{r}
install.packages("tidyverse")
install.packages("")
install.packages("")
'''

## Usage Examples

context for why someone wants to do whatever it is that your R package does.

'''{r}
file
'''
cleaning_crabs <- function(filepath){
  clean_crabs <- read_csv(filepath)
  data_clean <- clean_crabs %>% 
    drop_na()
  if (sum(is.na(d_c)) == 0){
    return(good_to_go)
  } else {
    print("NAs in the house")
  }
}