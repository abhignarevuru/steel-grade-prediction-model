# To find sample grade within both passing & aiming compositions.
# Abhigna Revuru | 16 March 2020 | C/o: Revuru Satish, Manager (QA&TD)

library(readxl)
PC <- read_excel("Passing Compositions.xlsx", 
                 col_types = c("text", "text", "numeric", "numeric", "numeric", "numeric", "numeric",
                               "numeric", "numeric", "numeric", "numeric", "numeric"))

# Input data
{
C <- as.numeric(readline(prompt = "C = "));
Mn <- as.numeric(readline(prompt = "Mn = "));
P <- as.numeric(readline(prompt = "P = "));
S <- as.numeric(readline(prompt = "S = "));
Si <- as.numeric(readline(prompt = "Si = "));
}

result <- vector()

# Checking
i = 1
repeat{
if (C>PC[i,3] & C<PC[i,4]) {
  if (Mn>PC[i,5] & Mn<PC[i,6]) {
    if (P>PC[i,7] & P<PC[i,8]) {
      if (S>PC[i,9] & S<PC[i,10]) {
        if (Si>PC[i,11] & Si<PC[i,12]) {
          result <- c(result, PC[i,2])
        }
      }
    }
  }
}
i = i+1
if(i>108) {
  break
}
}
print(result)
