# Step 1: Assuming you have a dataframe 'df' with 12 columns (Medication + 5 Symptom Severity) and 6 rows (6 medications).
# If you haven't loaded the data yet, you can do it like this:
# Replace 'your_data.csv' with the actual file name or load your data using other methods (e.g., read.table, read.csv)
# df <- read.csv("your_data.csv", header = TRUE)


# Step 2: Load necessary libraries
# Install and load the packages if you haven't already
# install.packages("ggplot2") # For creating visualizations
# install.packages("reshape2") # For data manipulation
library(ggplot2)
library(reshape2)

# Step 3: Melt the dataframe to convert it from wide to long format for easier plotting
melted_data <- melt(df, id.vars = "Medication", variable.name = "Symptom", value.name = "Severity")

# Step 4: Create various plots to visualize the data

# A. Box plot to compare symptom severity for each medication
ggplot(melted_data, aes(x = Medication, y = Severity)) +
  geom_boxplot() +
  labs(title = "Symptom Severity by Medication (Box Plot)",
       x = "Medication",
       y = "Symptom Severity")

# B. Bar plot to compare average symptom severity for each medication
ggplot(melted_data, aes(x = Medication, y = Severity)) +
  stat_summary(fun = mean, geom = "bar", fill = "steelblue") +
  labs(title = "Average Symptom Severity by Medication (Bar Plot)",
       x = "Medication",
       y = "Average Symptom Severity")

# C. Line plot to visualize the change in symptom severity for each medication
ggplot(melted_data, aes(x = Symptom, y = Severity, color = Medication)) +
  geom_line() +
  labs(title = "Change in Symptom Severity for Each Medication (Line Plot)",
       x = "Symptom",
       y = "Symptom Severity",
       color = "Medication")

# Step 5: Analyze the plots to decide which medication works best.
# In box plots and bar plots, medications with lower symptom severity are more effective.
# In line plots, medications with steeper negative slopes indicate faster symptom reduction.

# Note: This script assumes your dataframe is structured as described, and you may need to adjust the code accordingly if your data differs.
