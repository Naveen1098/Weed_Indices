# Weed_Indices
### Authors: Naveen Kumar P, Prabhu Govindasamy, Rishi Raj, Vijay Pooniya, Sanjay Singh Rathore, and T.K.Das

Weed management efficiency is evaluated by calculating various indices such as Weed Control Efficiency (WCE), Weed Control Index (WCI), Weed Index (WI), Weed Persistence Index (WPI), Herbicide Efficiency Index (HEI), Weed Management Index (WMI), Agronomic Management Index (AMI), Integrated Weed Management Index (IWMI), Weed Smothering Index (WSI), and Fresh-weight- dry weight ratio (F:D). 
The following are the formulas for the different indices
	WCE=  (Weed density in control plot-Weed density in treated plot)/(Weed density in control plot)×100

	WCI=  (Weed dry matter in control plot-Weed dry matter in treated plot)/(Weed dry matter in control plot)×100

	WI=  ( "Yield in weed free plot– Yield in treated plot" )/"Yield in weed free plot" ×100

	WPI=  ( "Weed dry weight in treated plot"  )/"Weed dry weight in control plot" ×(Weed density in control plot )/(Weed density in treated plot )

	HEI = ( Yield in treated plot-Yield in control plot )/"Yield in control plot" /(Weed dryweight in treated plot )/(Weed dryweight in control plot )


	WMI =(( Yield in treated plot-Yield in control plot )/"Yield in control plot" ×100)/(((Weed dryweight in control plot)⁄(Weed dryweight in treated plot)  )/(Weed dryweight in control plot )×100)

	AMI =((( Yield in treated plot-Yield in control plot )/"Yield in control plot" ×100)-(((Weed dryweight in control plot)⁄(Weed dryweight in treated plot))/(Weed dryweight in control plot)×100))/((((Weed dryweight in control plot)⁄(Weed dryweight in treated plot)  )/(Weed dryweight in control plot )×100))


	IWMI = (WMI+ AMI)/2

	RDW =(Dry weight of a weed species per unit area ×100)/("Total dry weigh" t of composite weed in that unit area)



	WSI = (("Mean dry weight of weeds in sole crop – Mean dry weight of weeds in intercrop" ))/"Mean dry weight of weeds in sole crop" x 100

	F:D = ("Fresh weight of weed"  samples)/("Dry weight of weeds s" amples)

Analysis in R involves multiple steps
Step 1: Install R and RStudio 
Step 2: install.packages(devtools)
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

