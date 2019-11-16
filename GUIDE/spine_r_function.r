## Function for predicting class labels
predicted <- function(){
 if(!is.na(degree_spondylolisthesis) & degree_spondylolisthesis <= 20.0850372550 ){
   nodeid <- 2
   predict <- "Normal"
 } else {
   nodeid <- 3
   predict <- "Abnormal"
 }
 return(c(nodeid,predict))
}
## end of function
##
newdata <- read.csv("C:\Users\Michael Streyle\Desktop\Senior Project\spine_data_guide.csv",header=TRUE,colClasses="character")
## Missing value code is NA
## Change file name if needed
## node contains terminal node ID of each case
## pred contains predicted value of each case
node <- NULL
pred <- NULL
for(i in 1:nrow(newdata)){
    degree_spondylolisthesis <- as.numeric(newdata$degree_spondylolisthesis[i])
    tmp <- predicted()
    node <- c(node,tmp[1])
    pred <- c(pred,tmp[2])
}
