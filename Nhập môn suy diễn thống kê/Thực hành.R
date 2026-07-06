Mau=c(65,66,70,59,60,55)
PhanNhomA = rep(c(1, 2), c(3,3))
PhanNhomA = as.factor(PhanNhomA)
PhanNhomB = rep(c(1, 2, 3), each = 2, length = 6)
PhanNhomB= as.factor(PhanNhomB)
#HA0: trung bình năng suất lúa của các giống lúa là như nhau
#HA1: trung .... khác nhau
#HB0: trung năng suất bón các loại phân là như nhau
#HB1: trung .... khác nhau
(HAB0: không có sự tương tác giữa phân bón và giống lúa
HAB1: Có...)
anova(lm(Mau~PhanNhomA + PhanNhomB))
anova(lm(Mau~PhanNhomA + PhanNhomB))
Analysis of Variance Table

Response: Mau
Df Sum Sq Mean Sq F value  Pr(>F)  
PhanNhomA  1  121.5   121.5 18.6923 0.04955 *
  PhanNhomB  2   15.0     7.5  1.1538 0.46429  
Residuals  2   13.0     6.5                  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Vì p_gia trị=0.04955<0.05 nên bác bỏ H0, chấp nhận H1. 
Vậy trung .... khác nhau
Vì p-giatrị=0.46429>5% nên chưa đủ cơ sở bác bỏ H0
Vậy trung bình năng suất lúa khi bón các loại phân bón nói trên là như nhau.


TukeyHSD (aov (Mau~PhanNhomA + PhanNhomB ))
  plot (TukeyHSD (aov (Mau~PhanNhomA)))
plot (TukeyHSD (aov (Mau ∼ PhanNhomB )))
plot(TukeyHSD(aov(MauGop s PhanKhoi)))

#H0: tỷ lệ tốt nghiệplàm  đúng ngành không quá 20%
#H1: tỷ lệ tốt nghiệp là đúng ngành là hơn 20%
binom.test(90,500,p=0.2,alt="g", conf.level = 0.9)
Exact binomial test

data:  90 and 500
number of successes = 90, number of trials = 500, p-value = 0.8807
alternative hypothesis: true probability of success is greater than 0.2
90 percent confidence interval:
  0.1579609 1.0000000
sample estimates:
  probability of success 
0.18 
Ta có pgiatri=0.8807>10% nên chưa đủ cs bác bỏ H0.
Vậy ý kiến đưa ra là đúng

x=c(1.2,1.5,2,2,2,2.5,3,4,4,2)
shapiro.test(x)
pgiatri=0.1092>1% nên không bác bỏ H0. x có phân bố chuẩn
t.test(x,mu=2.1,alternative = "g",conf.level = 0.99)
t.test(x,mu=2.1,alternative = "g",conf.level = 0.99)

One Sample t-test

data:  x
t = 1.0489, df = 9, p-value = 0.1608
alternative hypothesis: true mean is greater than 2.1
99 percent confidence interval:
  1.559269      Inf
sample estimates:
  mean of x 
2.42 
p_giatrị=0.1608> 1% nên....

x=c(1.2,1.5,2,2,2,2.5,3,4,4,2,2,2,2,2)
y=c(1,2,2,2,3,3,4,4,5,5,5,5)
shapiro.test(x)
wilcox.test(x,y,alt="g",paired = F)

H0: số liệu qs phù hợp với các tỷ lệ đã cho
H1: ...
Data=c(81,50,27)
chisq.test(Data,p=c(1/2,1/3,1/6))
pgiatri=...
#Kết luận: 
  
  
  
A=c(28,27,30,14,19,19,18,23,22)
MA=matrix(A,3,3,byrow = T)
MA
chisq.test(MA)
