
# Deliverable #1

library(dplyr)

Mecha_mpg <- read_csv("Resources\\MechaCar_mpg.csv", show_col_types = FALSE)

head(Mecha_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_mpg)) #generate multiple linear regression model


# Deliverable #2

Susp_coil <- read_csv("Resources\\Suspension_Coil.csv")

head(Susp_coil)


total_summary <- Susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

total_summary

lot_summary <- Susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary



# Deliverable #3

sample_data <- Susp_coil %>% sample_n(100)

t.test(sample_data$PSI, mu=1500)



t.test(subset(Susp_coil, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)


t.test(subset(Susp_coil, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)


t.test(subset(Susp_coil, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)






























