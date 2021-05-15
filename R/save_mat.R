#' Function to construct and save data matrix from the DICOM file
#' @param path_in afile path for the DICOM variable, needs to be a string
#' @param out_name name of the saved .csv file, need to be a string
#'
#' @return saved .csv file of the data matrix
#'
#' @export
#'
#'
#'
form_mat_fun = function(path_in, out_name){
    code = c(paste('[X, map] = dicomread("',path_in, '");', sep =""),
             "sz = size([X,map]);",
             "K = mat2gray([X, map]);",
             paste('xlswrite("',out_name, '",K)', sep = ""))
    res = matlabr::run_matlab_code(code)
    return(res)
}




