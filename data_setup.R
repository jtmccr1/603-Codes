setwd("~/Desktop/603 Project")

#Set up the model
relabund <- read.table('simple.relabund.metadata', header=T)
OTU8 <- sort(colSums(relabund[,5:ncol(relabund)]), decreasing = TRUE)[1:9]  # find 8 most abundant OTU's
modelOTU <- relabund[names(relabund) %in% c(names(OTU8),'Sample')] # Just the top 8 most abundant OTUs and the sample name
metadata <- relabund[,1:4]  # Group Mouse and Day as taken from Matt's names in the metadata relabund file
modeldata<-merge(metadata,modelOTU, by='Sample')

#Use cage A to calibrate and cage B to validate
Baseline <- function(cage){
  datacage<- modeldata[modeldata$Cage==cage,3:13]
  timecourse <-NULL
  #timeError <- NULL
  days <- unique(datacage$Day)
  for(i in 1:length(days)){
    day = days[i]
    dataday <- datacage[datacage$Day==day,1:11]
    means <- colMeans(dataday[c(2,4:ncol(dataday))])
  # Error < - colSds(dataday[c(2,4:ncol(dataday))])
    rbind(timecourse,means)->timecourse
  }
  matplot(timecourse[,1],timecourse[,2:ncol(timecourse)],col=1:ncol(timecourse),pch=1:ncol(timecourse))
}



