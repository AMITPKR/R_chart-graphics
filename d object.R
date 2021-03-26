## code for the pie chart
library("plotrix")            #get the library
x<-c(10,5,100,4)              #create population data in Lakh for the length 
lbl<-c("Raipur","Bilaspur","Delhi","Goa") 
perc<-round(100*x/sum(x),1)       # % for all city
png(file="2Dpiepercentage.png")        #give the file name
pie(x,lbl=perc,main="city pie chart based on their population",col=rainbow(length(x))) #plot the chart
legend("topright",lbl,cex=0.8,fill=rainbow(length(x)))
dev.off()     #save the file
