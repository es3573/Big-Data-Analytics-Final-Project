#glm 
df <- read.csv("C:/Users/Hangyu/Desktop/step1.csv",header=TRUE)
model <- glm(loan_status ~ . ,data=df[,-1],family=binomial(link="logit"))
summary(model)


