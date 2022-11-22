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

```{r}
crabs <- read.csv("/cloud/project/R")
```

#' outputs

#' clean data 
#' lm function plot
#' ggplot 

## Installation

Package depends on tidyverse

```{r}
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("roxygen")
```

## Usage Examples



```{r}
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
```


```{r}
lm_function <- function(carapace_length, body_depth){
model_fit <- lm(carapace_length ~ body_depth, data = crabs)
broom::tidy(model_fit)

broom::augment(model_fit) -> augmented_fit
qqnorm(augmented_fit$.resid)
qqline(augmented_fit$.resid, col = "purple")
}
```


```{r}
plot_it <- function(data) {
  ggplot(data = crabs, mapping = aes(x = carapace_length, y = body_depth)) +
    geom_point()
}
```
