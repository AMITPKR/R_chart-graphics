# R_piechart
R language has numerous libraries to create charts and graghs. A pie chart is a representation of values as slices od a circles with different colors. Pie() function is used for this.

## SYNTAX

pie(x,labels,radius,main,col,clockwise)

"x" is a vector containing the numeric values used in the pie chart.

"labels" used to give description to the slices.

"radius" indicates the radius of the circle (values between -1 and +1).

"main" indicates the tittle of the chart.

"col" indicates the color pallete.

"clockwise" logical values indicating if the slices are drawn clockwise or anticlockwise.

# package for chart and graphics in R
Run the following command to your Rstudio console to 

install.packages("plotrix")

# input Code
library("plotrix")            #get the library

x<-c(10,5,100,4)              #create population data in Lakh for the length

lbl<-c("Raipur","Bilaspur","Delhi","Goa") 

perc<-round(100*x/sum(x),1)       # % for all city

png(file="2Dpiepercentage.png")        #give the file name

pie(x,lbl=perc,main="city pie chart based on their population",col=rainbow(length(x))) #plot the chart

legend("topright",lbl,cex=0.8,fill=rainbow(length(x)))

dev.off()     #save the file

# Output
![2Dpiepercentage](https://user-images.githubusercontent.com/70443251/112511524-7e749300-8db8-11eb-9446-919e630a8a72.png)
