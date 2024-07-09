# Check the current working directory
print("Current working directory:")
print(getwd())

# List all files in the current working directory
print("Files in current working directory:")
print(list.files())

# If necessary, set the working directory to where the zip file is located
# Uncomment and modify the following line to set your working directory
# setwd("/path/to/your/directory")

# Verify the working directory again
print("Working directory after setting:")
print(getwd())

# Unzip the file into the specified directory
unzip("Employee_Profile.zip", exdir = "Employee_Profile")

# Check if the CSV file exists before attempting to read it
csv_file <- "Employee_Profile/CHRISTOPHER_CHONG_details.csv"
if (file.exists(csv_file)) {
  # Read the CSV file
  employee_details <- read.csv(csv_file)
  
  # Print the employee details
  print(employee_details)
} else {
  cat("File not found:", csv_file, "\n")
}