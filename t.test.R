##statistical comparison to compare CD8 infiltration in tumor and normal cerebellum

Murine_CD8_Normal_cerebellum <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/Murine_CD8_Normal_cerebellum.csv")
View(Murine_CD8_Normal_cerebellum)
Murine_CD8_Tumor <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/Murine_CD8_Tumor.csv")
View(Murine_CD8_Tumor)
Murine_CD8 <- rbind.data.frame(Murine_CD8_Normal_cerebellum, Murine_CD8_Tumor)
boxplot(Murine_CD8$Percent.Positive.Nuclei ~ Murine_CD8$Layer)
#Ho: mean  positive percentage nuclei of tumor = normal
#two-sided test
#assume non-equal varainces
t.test(Murine_CD8$Percent.Positive.Nuclei ~ Murine_CD8$Layer, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)

Welch Two Sample t-test

data:  Murine_CD8$Percent.Positive.Nuclei by Murine_CD8$Layer
t = -1.8121, df = 29.535, p-value = 0.08014
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -4.1665869  0.2501412
sample estimates:
  mean in group Normal  mean in group Tumor 
1.572508             3.530730  

Murine_Medulloblastoma_CD68_tumor <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/Murine_Medulloblastoma_CD68_tumor.csv")
View(Murine_Medulloblastoma_CD68_tumor)
Murine._Medulloblastoma_CD68_Normal <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/Murine _Medulloblastoma_CD68_Normal.csv")
 View(Murine._Medulloblastoma_CD68_Normal)
 Murine_68 <- rbind.data.frame(Murine_Medulloblastoma_CD68_tumor,Murine._Medulloblastoma_CD68_Normal)
 t.test(Murine_68$Percentage.of.positive.Pixel~Murine_68$Layer, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)
 
 
 Welch Two Sample t-test
 
 data:  Murine_68$Percentage.of.positive.Pixel by Murine_68$Layer
 t = 2.2317, df = 34.514, p-value = 0.03223
 alternative hypothesis: true difference in means is not equal to 0
 95 percent confidence interval:
   0.3315344 7.0460719
 sample estimates:
   mean in group Tumor mean in group Normal 
 12.411381             8.722578 
 
 boxplot(Murine_68$Percentage.of.positive.Pixel ~ Murine_68$Layer)
 
 Murine_Medullobastoma_Tumor_PD1 <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/Murine_Medullobastoma_Tumor_PD1.csv")
 View(Murine_Medullobastoma_Tumor_PD1)
 Murine_Medulloblastoma_PD_normal <- read.csv("/Volumes/G-DRIVE mobile/Data_Analysis/Thesis/Chapter3/Murine_Medulloblastoma_PD_normal.csv")
 View(Murine_Medulloblastoma_PD_normal)
 
 Murine_PD <- rbind.data.frame(Murine_Medullobastoma_Tumor_PD1, Murine_Medulloblastoma_PD_normal)
 t.test(Murine_PD$Percent.Positive.Nuclei~Murine_PD$Layer, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)
 Welch Two Sample t-test
 
 data:  Murine_PD$Percent.Positive.Nuclei by Murine_PD$Layer
 t = 2.3834, df = 31.557, p-value = 0.02334
 alternative hypothesis: true difference in means is not equal to 0
 95 percent confidence interval:
   0.02725231 0.34886495
 sample estimates:
   mean in group Tumor mean in group Normal 
 0.2956237            0.1075650 
 
 boxplot(Murine_PD$Percent.Positive.Nuclei ~ Murine_PD$Layer)
 