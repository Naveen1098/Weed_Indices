# `WeedIndices` Weed Indices in agronomy
<!-- badges: start -->
### Authors: Naveen Kumar Purushothaman, Prabhu Govindasamy, Rishi Raj, T.K.Das, Vijay Pooniya, and Sanjay Singh Rathore
<!-- badges: end -->
<em><p align="right"> Calculate everything in a go!!! </p></em>

## About
The `WeedIndices` package provides high-performing functionality for 
calculating different weed indices in a single run.

Weed management efficiency is evaluated by calculating various indices such as Weed Control Efficiency (WCE), 
Weed Control Index (WCI), Weed Index (WI), Weed Persistence Index (WPI), Herbicide Efficiency Index (HEI), 
Weed Management Index (WMI), Agronomic Management Index (AMI), Integrated Weed Management Index (IWMI), 
Weed Smothering Index (WSI), and Fresh-weight- dry weight ratio (F:D). 

## Core functionality 

The core functionality of the package can be summarized into the following 
functions:
  
__`Weed_control_efficiency`__:

$$ WCE = {{ (Weed~ density~ in~ control~ plot - Weed~ density~ in~ treated~ plot)\over Weed~ density~ in~ control~ plot}×100} $$

__`Weed_control_index`__:

$$ WCI=  {{(Weed~ dry~ matter~ in~ control~ plot~ - Weed~ dry~ matter~ in~ treated~ plot~)\over Weed~ dry~ matter~ in~ control~ plot~}×100} $$

__`Weed_index `__:

$$ WI= {{ (Yield~ in~ weed~ free~ plot~ –~ Yield~ in~ treated~ plot~)\over Yield~ in~ weed~ free~ plot~}×100} $$

__`Weed_persistence_index`__:

$$ WPI=  {Weed~ dry~ weight~ in~ treated~ plot~ \over Weed~ dry~ weight~ in~ control~ plot~}×{Weed~ density~ in~ control~ plot~ \over Weed~ density~ in~ treated~ plot~} $$

__`Herbicide_efficiency_index`__:

$$ HEI = {(Yield~ in~ treated~ plot~ -~ Yield~ in~ control~ plot~) \over Yield~ in~ control~ plot~} \times {Weed~ dry~ weight~ in~ treated~ plot~ \over Weed~ dry~ weight~ in~ control~ plot}~ $$

__`Weed_management_index`__:

$$ WMI = {{{(Yield~ in~ treated~ plot~ - Yield~ in~ control~ plot~) \over Yield~ in~ control~ plot~} \times 100} \over {{{(Weed~ dry~ weight~ in~ control~ plot~ /~ Weed~ dry~ weight~ in~ treated~ plot)} \over Weed~ dry~ weight~ in~ control~ plot~} \times 100}}$$

__`Agronomic_management_index`__:
```math
 AMI = {{[{{(Yield~ in~ treated~ plot~ - Yield~ in~ control~ plot~) \over Yield~ in~ control~ plot~} \times 100}] - [{{{(Weed~ dry~ weight~ in~ control~ plot~ /~ Weed~ dry~ weight~ in~ treated~ plot)} \over Weed~ dry~ weight~ in~ control~ plot~} \times 100}]} 
\over {{{(Weed~ dry~ weight~ in~ control~ plot~ /~ Weed~ dry~ weight~ in~ treated~ plot)} \over Weed~ dry~ weight~ in~ control~ plot~} \times 100}}
```
__`IWMI`__:

$$ IWMI = {(WMI~ + AMI) \over 2} $$

__`RDW`__:

$$ RDW ={{Dry~ weight~ of~ a~ weed~ species~ per~ unit~ area~ \over Total~ dry~ weight~ of~ composite~ weed~ in~ that~ unit~ area~}\times 100} $$

__`WSE`__:

$$ WSI = {{(Mean~ dry~ weight~ of~ weeds~ in~ sole~ crop~ –~  Mean~ dry~ weight~ of~ weeds~ in~ intercrop~)\over Mean~ dry~ weight~ of~ weeds~ in~ sole~ crop~}\times 100} $$

__`FDR`__:

$$ F:D = {Fresh~ weight~ of~ weed~ samples~ \over Dry~ weight~ of~ weeds~ samples} $$

__`All_Indices`__: This function calculates all the indices and export the results in the console as well as a excel workbook named **"WeedIndices_Results.xlsx"** in the same working directory of the input file.


## Installation 
If you want to install the package and try its functionality, it is very simple,
just type the following line in your `R` console:

Step 1: Install the pre-required packages: 
```
install.packages('devtools')
install.packages('openxlsx')
```
Step 2: Call the required libraries: 
```
library(devtools)
library(openxlsx)
```
Step 3: Installing the weed indices package: 
```
install_github("Naveen1098/Weed_Indices")
```
## Example 
After installing `Weed_Indices` you should be also able to run the following lines:
```
# Required libraries
library(devtools)
library(openxlsx)
library(WeedIndices)

# Calculating all indices
All_Indices () 
```
A new window opens for selecting an excel containing the data as per the prescribed format. 
The data file format is attached above named __`"Example_data_format.xlsx"`__

**Note: If the data is not saved in the prescribed format the program won't run properly. Be cautious**

Results will be stored in the same folder where you have the data. The name of excel file is **"WeedIndices_Results.xlsx"**.

## Citing the package
Simply type and you will get the info you need:
```
citation(package = "WeedIndices")
```
## Bug report and development version

You can create an [issue](https://github.com/Naveen1098/Weed_Indices/issues) on github. 
