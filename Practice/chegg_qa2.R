# Load the tidyverse library

library(tidyverse)

# Read the auto_claims data

auto_claims<-read_rds('C:/Users/ankit19.gupta/Desktop/Self_Projects/IntroToMathematicalStatistics/Practice/claims_df.rds')

# Create the data visualization

ggplot(data = auto_claims, aes(x =customer_lifetime_value , y = total_claims_amount,color="#006633")) +
  geom_point(alpha=0.25) +
  facet_grid(rows = vars(sales_channel), cols = vars(vehicle_size))+
  labs(title="Total Claim Amount vs Customer Lifetime Value by sales channel and vehicle size",x="Customer Lifetime Value",y="Total claim Amount")

print(unique(auto_claims$sales_channel))