#Excel Files
#install.packages('readxl')
library(readxl)

excel_sheets('Sample-Sales-Data.xlsx') #returns the names of the sheets in the data file
df<- read_excel('Sample-Sales-Data.xlsx',sheet = 'Sheet1')
head(df)
sum(df$Value)
summary(df)

entire.workbook <- lapply(excel_sheets('Sample-Sales-Data.xlsx'), read_excel, path="Sample-Sales-Data.xlsx") #reads all sheets
entire.workbook

#write files
#install.packages("rJava",type='source')
#install.packages('xlsx')

#library(xlsx)
write.xlsx(mtcars, "output_example.xlsx")
