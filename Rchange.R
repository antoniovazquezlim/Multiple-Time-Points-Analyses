hier_reg <- function(m0){
  # this function calculates change in R^2 between any three models in a hierarchical regression. 
  # takes three models, though more may be edited in
  # m0 = null model with no predictors, lm(DV~1, data = df)
  inject.dots <- function(df) {names(df) <- sub(" ", ".", names(df));df}

  # Rename SS column
  ss_m0 <- anova(m0) 
  ss_m0 <- inject.dots(ss_m0)

  # Extract renamed SS 
  ss_m0 <- ss_m0$Sum.Sq

  # Same for m1, m2
  ss_m12 <- anova(m1)
  ss_m12 <- inject.dots(ss_m12)
  
  #extract SS diff
  ss_m12 <- ss_m12[2, 4]
  
  # Divide
  result <- ss_m12 / ss_m0
  
  return(result)
}
