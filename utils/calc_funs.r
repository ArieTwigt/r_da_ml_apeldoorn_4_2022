calcCircle <- function(diameter, rounding=0, doubling=1){
  
  straal <- diameter / 2
  oppervlakte <- (straal **2) * pi
  oppervlakte_rounded <- round(oppervlakte, rounding) * doubling
  return(oppervlakte_rounded)
  
}



returnNumCols <- function(data){
  # initate empty vector with columns
  numeric_cols <- character(0)
  
  # all columns in the data frame --> For the loop
  columns <- colnames(data)
  
  # allowed data types
  allowed_data_types <- c("numeric", "integer")
  
  for(column in columns){
    current_data_type <- class(data[[column]])
    
    if(current_data_type %in% allowed_data_types){
      numeric_cols <- append(numeric_cols, column)
    } 
    
  }
  return(numeric_cols)         
}