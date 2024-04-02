# Save a single object to a file
# saveRDS(mtcars, "mtcars.rds")

library(tidyverse)

# Read the auto_claims data

auto_claims<-read_rds('C:/Users/ankit19.gupta/Desktop/Self_Projects/IntroToMathematicalStatistics/Practice/claims_df.rds')

# Create the data visualization

ggplot(auto_claims,aes(x=vehicle_size,y=total_claims_amount,color="vehicle_size"))+
geom_point(alpha=0.25)+
  geom_point(aes(x=vehicle_size,y=total_claims_amount,color="vehicle_size"),alpha=0.25)+
  scale_color_manual(values = c("monthly_premium"="#006633","months_policy_active"="#006633"))+
  labs(title="Customer Lifetime Value vs Different Categories",x="Category",y="Customer Lifetime Value")


# Load the tidyverse library

library(tidyverse)

# Read the auto_claims data

auto_claims<-read_rds('C:/Users/ankit19.gupta/Desktop/Self_Projects/IntroToMathematicalStatistics/Practice/claims_df.rds')

# Create the data visualization

ggplot(data = auto_claims, aes(x =customer_lifetime_value , y = total_claims_amount,color = "#006633")) +
  geom_point(alpha=0.25) +
  facet_grid(rows = vars(sales_channel), cols = vars(vehicle_size))
