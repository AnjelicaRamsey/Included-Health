
  
## Question 1: How would you measure patient retention for each therapists?


## Question 2: What conclusions can you arrive at about the overall retention of the therapists in this practice? Is this good or bad? Are there outliers? What actions would you recommend the practice take?


## Question 3: Does license or employment type influence retention?

library("tidyverse")
library("dplyr")
library("tidyr")
library("stringr")
library("lubridate")
library("ggplot2")
library("data.table")

# Path to datasets 
clinicians <- read.csv("./datasets/clinicians.csv") %>% mutate_all(na_if,"")
visits <- read.csv("./datasets/visits.csv") %>% mutate_all(na_if,"") %>% 
  filter(!is.na(patient_id))

# Join dataframes together, clinician_id primary key
combined_df <- visits %>% 
  merge(clinicians, by = "clinician_id", keep_all = T)

# # Sanity check
#   length(unique(combined_df$patient_id))
#   length(unique(visits$patient_id))



# Wrangle metrics such as returning Included Health, returning to same clinician or switching, number of clinician switches
return_includedhealth<- combined_df %>% 
  group_by(patient_id) %>% 
  summarize(total_visits = n(),  across())  %>%
  mutate(return_inchealth_num = ifelse(total_visits > 1, 1, 0)) %>% 
  mutate(return_inchealth = ifelse(total_visits > 1, TRUE, FALSE)) %>% 
  select(patient_id, return_inchealth, return_inchealth_num, total_visits)

return_clinician <- combined_df %>% 
  group_by(clinician_id, patient_id) %>% 
  summarize(freq_pt_clinician = n())  %>%
  mutate(return_clinician_num = ifelse(freq_pt_clinician > 1, 1, 0)) %>% 
  mutate(return_clinician = ifelse(freq_pt_clinician > 1, TRUE, FALSE))

combined_clinician_return <- combined_df %>% 
  left_join(return_clinician, by = c("clinician_id", "patient_id")) %>% 
  group_by(clinician_id, patient_id) %>% 
  select(patient_id, clinician_id, freq_pt_clinician, return_clinician_num, return_clinician) %>% 
  slice(1)


# distinct clinicians and return included health 
multi_clinician_pts <- combined_df %>% 
  group_by(patient_id) %>% 
  summarise(distinct_clinicians_total = n_distinct(clinician_id)) %>% 
  mutate(multi_clinicians = ifelse(distinct_clinicians_total  > 1, TRUE, FALSE)) %>% 
  # mutate(multi_clinicians_num = ifelse(distinct_clinicians_total > 1, 1, 0)) %>% 
  left_join(return_includedhealth, by = "patient_id") %>% 
  group_by(patient_id) %>% 
  slice(1)

visits_df <- combined_df %>% 
  left_join(multi_clinician_pts, by = c("patient_id")) %>% 
  left_join(combined_clinician_return, by = c("clinician_id", "patient_id")) 
# %>%
#   group_by(patient_id) %>%
#   arrange(visit_date) %>%
#   mutate(duration_days = round((difftime(max(visit_date),
#                                          min(visit_date), units = 'days'))))


write.csv(visits_df, "~/Documents/IncludedHealth/IncludedHealth/mastered_df.csv")

