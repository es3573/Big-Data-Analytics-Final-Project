#glm 
df <- read.csv("C:/Users/Hangyu/Desktop/Preprocessed_Pre_GLM.csv",header=TRUE)
model <- glm(loan_status ~ .
             ,data=df[,-1],family=binomial(link="logit"))
summary(model)
drops <- c("X","emp_length","home_ownership","addr_state","recoveries","collection_recovery_fee","collections_12_mths_ex_med")
write.csv(df[ , !(names(df) %in% drops)],'Final_Output.csv')

