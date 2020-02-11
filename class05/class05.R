#' ---
#' title: "Class 5: Data Visualization and graphs in R"
#' author: "Caitlin Johnson"
#' date: "January 21, 2020"
#' ---

#Class 5
# Data Visualization and graphs in R
plot(1:10, col = 'blue', typ='o')
baby<-read.table('bimm143_05_rstats/weight_chart.txt', header = TRUE)
plot(baby$Age, baby$Weight, xlab = "Baby Age (Months)", ylab = 'Baby Weight (kg)', 
       type = 'o', col = 'blue', pch = 15, ylim = c(2, 10), main = 'Baby Age vs Weight')

# A silly example of 'pch' plot charactr and 'cex' size
plot(1:5, cex=1:5, pch=1:5)





mouse <- read.table('bimm143_05_rstats/feature_counts.txt', header = TRUE, sep ='\t')
par(mar =c(5, 3, 2, 1))
barplot(mouse$Count, horiz = TRUE, 
        names.arg = mouse$Feature, 
        las = 1, col = 'lightblue', main = 'Number of Features in the Mouse GRCm38 Genome', 
        cex.main = 0.8, cex.axis = 0.75, cex.names= 0.5)
par(mar = c(5, 4, 2, 2))
# Section 3: Using color in plots
sex <- read.delim('bimm143_05_rstats/male_female_counts.txt',
                  header = TRUE, sep = '\t')
par
barplot(sex$Count, las = 1, main = 'Male Female Counts',
        names.arg = sex$Sample, ylab = 'Counts',
        col = rainbow(nrow(sex)))        
#Another plot of the same thing but different colors
barplot(sex$Count, las = 2, main = 'Male Female Counts',
        names.arg = sex$Sample, ylab = 'Counts',
        col = c('green', 'blue'))

        