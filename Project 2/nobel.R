library(tidyverse)
library(lubridate)

nobel <- read_csv("./nobel.csv")

head(nobel)

nobel %>% count()

nobel %>% 
  count(gender) %>%
  arrange(n)

nobel %>% 
  count(category) %>%
  arrange(desc(n))

nobel %>% 
  count(birth_country) %>%
  arrange(desc(n)) %>%
  head()

nobel_age <- nobel %>%
  mutate(age = awardYear - year(birth_date))

ggplot(nobel_age, aes(x = awardYear, y = age, color=birth_country)) + 
 geom_point(alpha=0.5, position="jitter")


ggplot(nobel_age, aes(x = awardYear, y = age)) + 
  geom_point(alpha=0.4) +
  geom_smooth(se=TRUE)

ggplot(nobel_age, aes(x=awardYear, y=age))+
  geom_point(alpha=0.4) +
  geom_smooth() + 
  facet_wrap(~ category)

ggplot(nobel_age, aes(x=awardYear, y=age))+
  geom_point(alpha=0.4) +
  geom_smooth() + 
  facet_wrap(~ gender)

ggplot(nobel, aes(x=gender, fill=gender ,color=gender))+
  geom_histogram(binwidth= 1, stat="count") + 
  facet_wrap(~ category)


ggplot(nobel, aes(x=gender, fill=gender, color=gender))+
  geom_histogram(binwidth= 1, stat="count") + 
  facet_wrap(~ awardYear)

indian_winners <- nobel %>% 
  mutate(
    india_born_winner = birth_country == "India",
    five = floor(awardYear / 5) * 5
  ) %>%
  group_by(five) %>%
  summarize(proportion=mean(india_born_winner, na.rm=TRUE))

us_winners <- nobel %>% 
  mutate(
    pak_winners = birth_country == "USA",
    five = floor(awardYear / 5) * 5
  ) %>%
  group_by(five) %>%
  summarize(proportion=mean(pak_winners, na.rm=TRUE))

us_winners

ggplot(indian_winners, aes(x=five, y=proportion))+
  geom_line() +
  geom_point(alpha=0.4) 

ggplot(us_winners, aes(x=five, y=proportion))+
  geom_line() +
  geom_point(alpha=0.4)

vc <- c("USA", "United Kingdom", "India", "Israel", "Japan")

top_nobel <- nobel[nobel$birth_countryNow%in% vc,]
  
top_nobel

ggplot(top_nobel, aes(x=awardYear, y = birth_countryNow, col=birth_countryNow))+
  geom_point(position="jitter", alpha = 0.6)+
  facet_grid(category ~ .)
       
ggplot(top_nobel, aes(x=awardYear, y = birth_countryNow, col=birth_countryNow))+
  geom_point(position="jitter", alpha = 0.6)+
  facet_grid(gender ~ .)

