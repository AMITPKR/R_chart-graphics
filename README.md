# R_chart&graphs
R language has numerous libraries to create charts and graghs. A pie chart is a representation of values as slices od a circles with different colors. Pie() function is used for this.

## SYNTAX of pie chart

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

# Input Code
library("plotrix")            #get the library

x<-c(10,5,100,4)              #create population data in Lakh for the length

lbl<-c("Raipur","Bilaspur","Delhi","Goa") 

perc<-round(100*x/sum(x),1)       # % for all city

png(file="2Dpiepercentage.png")        #give the file name

pie(x,lbl=perc,main="city pie chart based on their population",col=rainbow(length(x))) #plot the chart

legend("topright",lbl,cex=0.8,fill=rainbow(length(x)))

dev.off()     #save the file

# Output pie chart
![2Dpiepercentage](https://user-images.githubusercontent.com/70443251/112511524-7e749300-8db8-11eb-9446-919e630a8a72.png)

# Bar Chart
R bar chart represent data in ractangular bars with lenth of the bar . r uses the function barplot().
# syntax
barplot(H,xlab,ylab,main,names.arg,col)

H-> vector or matrix containing numeric values.

xlab-> the lable for x axis.

ylab-> the lable for y axis.

main-> tittle of the bar chart.

names.org-> vector of names appearing under each bar.

col-> used to give colors to the bars
# simple example of code
h<-c(7,12,28,3,41)

m<-c("mar","apr","may","jun","jul")

png(filename ="barchart1.png" )

barplot(h,xlab ="months",ylab = "revenue",names.arg = m,col="Pink",main="revenue chart",border="red")

dev.off()

# output bar chart
![barchart1](https://user-images.githubusercontent.com/70443251/112587689-1065b580-8e24-11eb-91b1-7d3bb63e23d8.png)

