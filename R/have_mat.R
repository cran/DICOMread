#' Function to check whether Matlab is available
#'
#' @return a boolean variable
#'
#' @export
#' @examples
#' Avb_fun()
#'
Avb_fun = function(){
  out = matlabr::have_matlab()
  return(out)
}
