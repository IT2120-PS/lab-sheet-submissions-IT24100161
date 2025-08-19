

setwd("C:/Users/it24100161/Desktop/IT24100161")
branch_data <- read.table("Exercise.txt", header = TRUE, sep = "\t") 
head(branch_data)








identify_variable_info <- function(df) {

  result <- data.frame(Variable = character(), 
                       Type = character(), 
                       Scale = character(), 
                       stringsAsFactors = FALSE)
  
 
  for (col in colnames(df)) {
    
    col_type <- class(df[[col]])[1]
    
    if (col_type == "factor") {
      scale <- "Nominal" 
    } else if (col_type == "numeric" || col_type == "integer") {
      scale <- "Ratio"  
    } else if (col_type == "character") {
      scale <- "Nominal"  
    } else {
      scale <- "Unknown"
    }
    
    result <- rbind(result, data.frame(Variable = col, Type = col_type, Scale = scale))
  }
  
  return(result)
}
variable_info <- identify_variable_info(branch_data)
print(variable_info)




