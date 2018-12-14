# GEMINI

This repository provides visuallization to compare data from some tables of two CDM.

# TABLE LIST

PERSON

DEATH

VISIT OCCURRENCE

CONDITION OCCURRENCE

DRUG EXPOSURE

DRUG ERA

(OBSERVATION_PERIOD)

# HOW TO USE

<<<<<<< HEAD
<<<<<<< HEAD
0. Before SaveData.R, you should make server_info.cfg file.

You should create file in work directory by using terminal.

```
touch server_info.cfg
```

or you can create server_info.txt file and then convert .txt to .cfg.

In file, you should write down DB server information and DB user information.
=======
0. In R, install_github() will need auth_token.
=======
1. Install GEMINI package using install_github().

```
install.packages("devtools")
library(devtools)
install_github("https://github.com/ABMI/GEMINI.git")
library(gemini)
```
>>>>>>> 6705831... Modified readme & resolved #11 - tag

> Until merging, you should be use this code when install package.

```
install_github("https://github.com/ABMI/GEMINI.git", ref="gemini_temp")
```

2. After install, create_rds() to create RDS files.

You can set your own work directory path and create server_info.cfg file to connect DB server.

What you type down in Rstudio the server_info.cfg file in the following format.

>>>>>>> 98c4fb6... Add error check about DB connecting

```
dbName=<sql server name>
server=<server IP>
schemaName=<schema name>
user=<ID>
password=<password>
```

<<<<<<< HEAD
1. Run SaveData.R to get Standard RDS files

This will be create 'Standard RDS', 'target RDS' folder. And if server_info.cfg is correctly able to access DB, create RDS files in 'standard RDS' folder 

2. Request RDS files to other institution.

This RDS files must be stored in 'Target RDS' folder.
  
3. Run GetData.R

If you don't have Target RDS files, It asks you want to proceed. Type 'y', It copy Standard RDS files to Target RDS. Type 'n' or else, process will be stopped.

4. Run DrawChart.R

This process will create gemini_md.md and gemini_md.html file and automatically execute html file.
=======
If you already have RDS files, put them in 'Standard RDS' folder and follow next process.

3. Request RDS files to other institution.

This RDS files must be stored in 'Target RDS' folder.

Just standard rds files can run GEMINI but line graph will be shown single institution rds data.
  
4. Run Gemini()

You should set path where 'Standard RDS' folder and 'Target RDS' folder exist.

Then GEMINI will create images folder(with image files), markdown file and html file and will appear browser to show you a report(html file) what GEMINI made.

If data is NULL (or image file shows 'No Data'), check the CDM data really it NULL.
>>>>>>> 98c4fb6... Add error check about DB connecting

> If R studio encoding is CP949 (Window default), don't open gemini_md.Rmd file until change R studio encoding to UTF-8. It occurs .Rmd file crash.
