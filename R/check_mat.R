#' Function to check whether the DICOM matrix has been saved successfully
#' @param file_name the name of the .csv file saved under form_mat_fun()
#' @return a boolean variable
#'
#' @export
#'
#'

check_mat = function(file_name){
  out = file.exists(file_name)
  return(out)
}
