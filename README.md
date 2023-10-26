# `Weed_Indices` Weed Indices in agronomy
<!-- badges: start -->
### Authors: Naveen Kumar P, Prabhu Govindasamy, Rishi Raj, Vijay Pooniya, Sanjay Singh Rathore, and T.K.Das
<!-- badges: end -->
<em><p align="right"> Calculate everything in a go!!! </p></em>

## About
The `Weed_Indices` package provides high-performing functionality for 
calculating different weed indices in a single run.

Weed management efficiency is evaluated by calculating various indices such as Weed Control Efficiency (WCE), 
Weed Control Index (WCI), Weed Index (WI), Weed Persistence Index (WPI), Herbicide Efficiency Index (HEI), 
Weed Management Index (WMI), Agronomic Management Index (AMI), Integrated Weed Management Index (IWMI), 
Weed Smothering Index (WSI), and Fresh-weight- dry weight ratio (F:D). 

## Core functionality 

The core functionality of the package can be summarized into the following 
functions:
  
__`Weed_control_efficiency`__:

WCE=  (Weed density in control plot-Weed density in treated plot)/(Weed density in control plot)×100

__`Weed_control_index`__:

WCI=  (Weed dry matter in control plot - Weed dry matter in treated plot)/(Weed dry matter in control plot)×100

__`Weed_index `__:

WI=  ( "Yield in weed free plot– Yield in treated plot" )/"Yield in weed free plot" ×100

__`Weed_persistence_index`__:

WPI=  ( "Weed dry weight in treated plot"  )/"Weed dry weight in control plot" ×(Weed density in control plot )/(Weed density in treated plot )

__`Herbicide_efficiency_index`__:

HEI = ( Yield in treated plot-Yield in control plot )/"Yield in control plot" /(Weed dryweight in treated plot )/(Weed dryweight in control plot )

__`Weed_management_index`__:

YC Yield in control plot

YT Yield in treated plot

WT Weed dry weight in treated plot

WC Weed dry weight in control plot

WMI =(((YT-YC)/YC)*100)/(((WC/WT)/WC)*100)

__`Agronomic_management_index`__:

AMI = (((YT-YC)/YC)*100)-((WC/WT)/WC)*100)/((WC/WT)/WC)*100);

__`IWMI`__:
IWMI = (WMI+ AMI)/2

__`RDW`__:
RDW =(Dry weight of a weed species per unit area ×100)/("Total dry weigh" t of composite weed in that unit area)

__`WSE`__:

WSI = (("Mean dry weight of weeds in sole crop – Mean dry weight of weeds in intercrop" ))/"Mean dry weight of weeds in sole crop" x 100

__`FDR`__:
F:D = ("Fresh weight of weed"  samples)/("Dry weight of weeds s" amples)

__`All_Indices`__: This function calculates all the indices and export the results in the console as well as a excel workbook 
named "WeedIndices_Results.xlsx" in the same working directory of the input file.


## Analysis in R involves multiple steps

###Step 1: Install R and RStudio  

###Step 2: Install the pre-required packages: devtools and openxlsx

install.packages(devtools)

Step 3: library(devtools)
Step 4: install_github(Naveen1098/Weed_Indices)
Step 5: library(WeedIndices)
Step 6: install.packages("openxlsx")
Step 7: library(openxlsx)
Step 8: Type and run the All_Indices () 
Step 9: A new window opens for selecting an excel containing the data as per the prescribed format. 
Step 10: Results will be stored in the same folder where you have the data. The name of excel file is WeedIndices_Results.
Data format for the analysis
Attach our excel sheet

