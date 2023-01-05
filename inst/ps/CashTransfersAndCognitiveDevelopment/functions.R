sur_TREAT <- function(list, dataset, right_side_formula){
  #create 'system' and run the SUR
  system = as.list(lapply(list, function(x){
    as.formula(paste0(x, "~", right_side_formula))
  }))
  fitsur <- systemfit(system, method = "OLS", data=dataset)
  
  #estimate the mean coefficient of 'TREAT'
  TREAT_names <- grepl("_TREAT", names(fitsur$coefficients))
  TREAT_coefs <- fitsur$coefficients[TREAT_names]
  avg_coef <- mean(TREAT_coefs)
  
  #estimate the according std. dev.
  cov_matrix_TREAT <- fitsur$coefCov[TREAT_names, TREAT_names]
  sigma_squared = mean(diag(cov_matrix_TREAT))
  n <- length(system)
  std_dev_of_mean <- sqrt((sigma_squared)/n)
  
  return(data.frame(coefficient = c(avg_coef), standard_dev = c(std_dev_of_mean)))
}