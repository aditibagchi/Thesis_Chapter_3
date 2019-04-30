Human_CD3 <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/Human_IHC_CD3.csv")
View(Human_CD3)
hist(Human_CD3$Percent.Postive.Nuclei..CD3.)
#not a normally distributed data. 
boxplot(Human_CD3$Percent.Postive.Nuclei..CD3., ylab = "CD3")
#3 outliers were detected 
##Q3 + 1.5*IQR[IQR = interquantile range]
IQR(Human_CD3$Percent.Postive.Nuclei..CD3.)
#0.56
quantile(Human_CD3$Percent.Postive.Nuclei..CD3.)
##0%       25%       50%       75%      100% 
##0.1764990(Q1) 0.2592425(Q2) 0.5433885(Q3) 0.8230002(Q4) 2.7853800
0.54 + (1.5*0.56)
#1.38
## any value above 1.38 is an outlier. 

mean(Human_CD3$Percent.Postive.Nuclei..CD3.)
#0.74
HUman_IHC_CD68 <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/HUman_IHC_CD68.csv")
hist(HUman_IHC_CD68$Percent..postive.Pixel)
boxplot(HUman_IHC_CD68$Percent..postive.Pixel)