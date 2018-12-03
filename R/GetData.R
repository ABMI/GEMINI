################################################################################
# READ DATA RESOURCE
# In RDS Folder, there shouldn't exist another rds files.
################################################################################
<<<<<<< HEAD
=======

>>>>>>> 473b831... Fixed assign error
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# assign value function
set_val <<- function(name_list) {
<<<<<<< HEAD
    temp <- lapply(name_list, function(x) paste0("std_",x))
    lapply(name_list, function(x) assign(gsub(temp, pattern = ".rds", replacement = ""), readRDS(paste0("../Standard RDS/", x)), envir = .GlobalEnv))
    temp <- gsub(temp, pattern = "std_", replacement = "tar_")
    lapply(name_list, function(x) assign(gsub(temp, pattern = ".rds", replacement = ""), readRDS(paste0("../Target RDS/", x)), envir = .GlobalEnv))
=======
    lapply(name_list, function(x) assign(gsub(lapply(x, function(y) paste0("std_",y)), pattern = ".rds", replacement = ""), readRDS(paste0("../Standard RDS/", x)), envir = .GlobalEnv))
    lapply(name_list, function(x) assign(gsub(lapply(x, function(y) paste0("tar_",y)), pattern = ".rds", replacement = ""), readRDS(paste0("../Target RDS/", x)), envir = .GlobalEnv))
>>>>>>> 473b831... Fixed assign error
}
################################################################################
# CDM valuable name list
################################################################################
# Read data list
# if Save changed, this list should change
str_name_list <- list.files(paste0(dirname(getwd()), "/Standard RDS/"), pattern = "*.rds")
tar_name_list <- list.files(paste0(dirname(getwd()), "/Target RDS/"), pattern = "*.rds")

name_list <- intersect(str_name_list,tar_name_list)
no_files <- setdiff(str_name_list,tar_name_list)

################################################################################
# Read Data
################################################################################
if(length(no_files) != 0&&length(name_list)!=0){
    set_val(name_list)
<<<<<<< HEAD
    lapply(no_files, function(x) assign(paste0("std_",gsub(x,pattern =".rds",replacement = "")),value = readRDS(paste0("../Standard RDS/", x)),envir=.GlobalEnv))
    lapply(no_files, function(x) assign(paste0("tar_",gsub(x,pattern =".rds",replacement = "")),value = NULL,envir=.GlobalEnv))
}else if(length(no_files) != 0&&length(name_list)==0){
    pms <- readline('No RDS file in Target RDS folder. Do you want to proceed(y / n)? ')
    if(pms == "y" || pms == "Y"){
        lapply(no_files, function(x) assign(paste0("std_",gsub(x,pattern =".rds",replacement = "")),value = readRDS(paste0("../Standard RDS/", x)),envir=.GlobalEnv))
        lapply(no_files, function(x) assign(paste0("tar_",gsub(x,pattern =".rds",replacement = "")),value = readRDS(paste0("../Standard RDS/", x)),envir=.GlobalEnv))
=======
    lapply(no_files, function(x) assign(paste0("std_",gsub(x,pattern ="*.rds",replacement = "")),value = readRDS(paste0("../Standard RDS/", x)),envir=.GlobalEnv))
    lapply(no_files, function(x) assign(paste0("tar_",gsub(x,pattern ="*.rds",replacement = "")),value = NULL,envir=.GlobalEnv))
}else if(length(no_files) != 0&&length(name_list)==0){
    pms <- readline('No RDS file in Target RDS folder. Do you want to proceed(y / n)? ')
    if(pms == "y" || pms == "Y"){
        lapply(no_files, function(x) assign(paste0("std_",gsub(x,pattern ="*.rds",replacement = "")),value = readRDS(paste0("../Standard RDS/", x)),envir=.GlobalEnv))
        lapply(no_files, function(x) assign(paste0("tar_",gsub(x,pattern ="*.rds",replacement = "")),value = readRDS(paste0("../Standard RDS/", x)),envir=.GlobalEnv))
>>>>>>> 473b831... Fixed assign error
    }else if (pms == "n" || pms == "N"){
        message("Proceed is stopped.")
    }else{
        message("Wrong input. proceed is stopped.")
    }
}else{
    set_val(name_list)
    print("All data exist")
<<<<<<< HEAD
}
=======
}
>>>>>>> 473b831... Fixed assign error
