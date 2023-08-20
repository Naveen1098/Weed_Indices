# Code Written by: Mr Naveen Kumar P
# Guided by: Dr. Prabhu G

#------------- Functions ----------------------------------------------------
#' Weed control efficiency
#'
#' Calculates the weed control efficiency
#' @param WDCP Weed density in control plot
#' @param WDTP Weed density in treated plot
#' @return Weed control efficiency
#' @examples
#' temp1 <- Weed_control_efficiency (WDCP =80,WDTP =30);
#' temp2 <- Weed_control_efficiency( WDCP =80,WDTP =c(30,40,25,15,45) );
#' @export
# 1. Weed control efficiency
Weed_control_efficiency <- function(WDCP,WDTP){
  "
  WDCP: Weed density in control plot
  WDTP: Weed density in treated plot
  Weed control efficiency =
  ((Weed density in control plot – Weed density in treated plot )/Weed density in control plot) x 100
  "
  Result <- ((WDCP -WDTP)/WDCP)*100;
  return(Result);
}

#' Weed control index
#'
#' Calculates the Weed control index
#' @param WDCP Weed dry weight in control plot
#' @param WDTP Weed dry weight in treated plot
#' @return Weed control index
#' @examples
#' temp1 <- Weed_control_index (WDCP =30,WDTP =10);
#' temp2 <- Weed_control_index( WDCP =30,WDTP =c(10,15,12,8,16) );
#' @export
# 2. Weed control index
Weed_control_index <- function(WDCP,WDTP){
  "
  WDCP: Weed dry weight in control plot
  WDTP: Weed dry weight in treated plot
  Weed control index =
  ((Weed dry weight in control plot – Weed dry weight in treated plot )/Weed dry weight in control plot) x 100
  "
  Result <- ((WDCP -WDTP)/WDCP)*100;
  return(Result);
}


#' Weed index
#'
#' Calculates the Weed index
#' @param YFP Yield in weed free plot
#' @param YTP Yield in treated plot
#' @return Weed index
#' @examples
#' temp1 <- Weed_index(YFP = 5.8,YTP =5);
#' temp2 <- Weed_index(YFP = 5.8,YTP =c(5,4.8,4.5,5.5,4.2) );
#' @export
# 3. Weed index
Weed_index <- function(YFP,YTP){
  "
  YFP: Yield in weed free plot
  YTP: Yield in treated plot

  Weed index =
  ((Yield in weed free plot– Yield in treated plot )/Yield in weed free plot) x 100
  "
  Result <- ((YFP -YTP)/YFP)*100;
  return(Result);
}

#' Weed persistence index
#'
#' Calculates the Weed persistence index
#' @param WT Weed dry weight in treated plot
#' @param WC Weed dry weight in control plot
#' @param WPC Weed density in control plot
#' @param WPT Weed density in treated plot
#' @return Weed persistence index
#' @examples
#' temp1 <- Weed_persistence_index(WT=c(15,10,12,8,16),WC=30,WPC =80,WPT =c(30,40,25,15,45));
#' @export
# 4. Weed persistence index
Weed_persistence_index <- function(WT,WC,WPC,WPT){
  Result <- (WT*WPC)/(WC*WPT);
  return(Result);
}

#' Herbicide efficiency index
#'
#' Calculates the Herbicide efficiency index
#' @param YC Yield in control plot
#' @param YT Yield in treated plot
#' @param WT Weed dry weight in treated plot
#' @param WC Weed dry weight in control plot
#' @return Herbicide efficiency index
#' @examples
#' temp1 <- Herbicide_efficiency_index(WT=c(15,10,12,8,16),WC=30,YC =3.9,YT =c(5,4.8,4.5,5.5,4.2));
#' @export
# 5. Herbicide efficiency index
Herbicide_efficiency_index<- function(YT,YC,WT,WC){
  Result <- ((YT-YC)/YC)/(WT/WC);
  return(Result);
}

#' Weed management index
#'
#' Calculates the Weed management index
#' @param YC Yield in control plot
#' @param YT Yield in treated plot
#' @param WT Weed dry weight in treated plot
#' @param WC Weed dry weight in control plot
#' @return Weed management index
#' @examples
#' temp1 <- Weed_management_index(WT=c(15,10,12,8,16),WC=30,YC =3.9,YT =c(5,4.8,4.5,5.5,4.2));
#' @export
# 6. Weed management index
Weed_management_index<- function(YT,YC,WT,WC){
  Result <- ((YT-YC)/YC)/((WC-WT)/WC);
  return(Result);
}

#' Agronomic management index
#'
#' Calculates the Agronomic management index
#' @param YC Yield in control plot
#' @param YT Yield in treated plot
#' @param WT Weed dry weight in treated plot
#' @param WC Weed dry weight in control plot
#' @return Agronomic management index
#' @examples
#' temp1 <- Agronomic_management_index(WT=c(15,10,12,8,16),WC=30,YC =3.9,YT =c(5,4.8,4.5,5.5,4.2));
#' @export
# 7. Agronomic management index
Agronomic_management_index<- function(YT,YC,WT,WC){
  Result <- (((YT-YC)/YC)-((WC-WT)/WC))/((WC-WT)/WC);
  return(Result);
}

#' Integrated weed management index
#'
#' Calculates the Integrated weed management index
#' @param YC Yield in control plot
#' @param YT Yield in treated plot
#' @param WT Weed dry weight in treated plot
#' @param WC Weed dry weight in control plot
#' @return Integrated weed management index
#' @examples
#' temp1 <- IWMI(WT=c(15,10,12,8,16),WC=30,YC =3.9,YT =c(5,4.8,4.5,5.5,4.2));
#' @export
# 8. Integrated weed management index
IWMI<- function(YT,YC,WT,WC){
  WMI <- Weed_management_index(YT,YC,WT,WC);
  AMI <- Agronomic_management_index(YT,YC,WT,WC);
  Result <- (WMI+AMI)/2;
  return(Result);
}

#' Relative dry weight
#'
#' Calculates the Relative dry weight
#' @param DW Dry weight of a weed species per unit area
#' @return Relative dry weight
#' @examples
#' temp1 <- RDW(DW=c(5,4.8,4.5,5.5,4.2));
#' @export
# 9. Relative dry weight
RDW<- function(DW){
  Result <- (DW*100)/sum(DW);
  return(Result);
}

#' Weed smothering efficiency
#'
#' Calculates the Weed smothering efficiency
#' @param SC Mean dry weight of weeds in sole crop
#' @param IC Mean dry weight of weeds in intercrop
#' @return Weed smothering efficiency
#' @examples
#' temp1 <- WSE(SC=10,IC=5);
#' @export
# 10. Weed smothering efficiency
WSE<- function(SC,IC){
  Result <- ((SC-IC)/SC)*100;
  return(Result);
}

#' Fresh weight to dry weight ratio
#'
#' Calculates the Fresh weight to dry weight ratio
#' @param FW Fresh weight of weed samples
#' @param DW Dry weight of weed samples
#' @return Fresh weight to dry weight ratio
#' @examples
#' temp1 <- FDR(FW=10,DW=5);
#' @export
# 11. Fresh weight to dry weight ratio
FDR<- function(FW,DW){
  Result <- (FW/DW);
  return(Result);
}
