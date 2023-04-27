#' A function for setting the core backup parameters for your library
#'
#' This function allows you to set
#' @param output Do you want to automatically save the output when backing up the library? Default to TRUE
#' @keywords output
#' @export
#' @examples
#' set_backup()
#'


set_backup <- function(output){
  if(output == TRUE){
    sheetData <- datasheet(myLibrary, name="core_Backup")
    sheetData$IncludeOutput <- TRUE  # Add output to the backup
    saveDatasheet(myLibrary, data = sheetData, name = "core_Backup")
  }
}


