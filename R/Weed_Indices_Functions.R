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

#' Calculating the indices from the excel file
#'
#' Calculates different weed indices from the given excel file
#' @param file_path path for your excel file
#' @return different weed indices
#' @examples
#' file_path <- "G:/Naveen_spectral_similarity_index/Weed_Indices/Weed index-1.xlsx";
#' all_Weed_indices <- All_Indices(file_path);
#' @export
#
All_Indices<- function(method= "All"){
  fname <- file.choose()
  df <- openxlsx::read.xlsx(fname,sheet = 1,startRow = 2)
  no_col <- ncol(df)

  if(method == "All"){
  Indices_df <- df[,c(2:4)]
  Indices_df <- na.omit(Indices_df)

  RDW_df <- df[,c(5:6)]
  RDW_df <- na.omit(RDW_df)

  WSE_df <-df[,c(7:8)]
  WSE_df <- na.omit(WSE_df)

  FDW_df <-df[,c(9:10)]
  FDW_df <- na.omit(FDW_df)
  if(nrow(Indices_df >0)){
  if (nrow(Indices_df >=3)) {

    WD <- Indices_df[,1]
    WDD <-Indices_df[,2]
    YD <-Indices_df[,3]

    n1_WD <-length(WD)
    n1_WDD <-length(WDD)
    n1_Y <-length(YD)


    WCE <-Weed_control_efficiency(WD[n1_WD],WD[1:(n1_WD-2)])
    WCI <-Weed_control_index(WDD[n1_WDD],WDD[1:(n1_WDD-2)])
    WI<-Weed_index(YFP=YD[(n1_Y-1)],YTP=YD[1:(n1_Y-2)])
    WPI <-Weed_persistence_index(WT=WDD[1:(n1_WDD-2)],WC=WDD[n1_WDD],
                                 WPC=WD[n1_WD],WPT=WD[1:(n1_WD-2)])
    HEI<-Herbicide_efficiency_index(YT=YD[1:(n1_Y-2)],YC=YD[(n1_Y)],
                                    WT=WDD[1:(n1_WDD-2)],WC=WDD[n1_WDD])
    WMI <-Weed_management_index(YT=YD[1:(n1_Y-2)],YC=YD[(n1_Y)],
                                WT=WDD[1:(n1_WDD-2)],WC=WDD[n1_WDD])
    AMI<-Agronomic_management_index(YT=YD[1:(n1_Y-2)],YC=YD[(n1_Y)],
                                    WT=WDD[1:(n1_WDD-2)],WC=WDD[n1_WDD])
    IWMI1 <-IWMI(YT=YD[1:(n1_Y-2)],YC=YD[(n1_Y)],
                 WT=WDD[1:(n1_WDD-2)],WC=WDD[n1_WDD])
    final_indices_df <- cbind("Weed control efficiency"=WCE,
                              "Weed control index"=WCI,
                              "Weed index"=WI,
                              "Weed persistence index"=WPI,
                              "Herbicide efficiency index"=HEI,
                              "Weed management index"=WMI,
                              "Agronomic management index"=AMI,
                              " Integrated weed management index"=IWMI1
                              )
    rownames(final_indices_df)<-df[1:(n1_WD-2),1]

  }else{stop("atleast 1 observations of treatment, weed free and control plot data is needed")}}
  else{warning("There is no data for indices calculation")  }

  if (nrow(RDW_df>0)) {
    if (nrow(RDW_df >=2)) {
      n1_rwd <-nrow(RDW_df)
      RDW1 <-as.data.frame(RDW(RDW_df[1:(n1_rwd-1),2]))
      rownames(RDW1)<-RDW_df[1:(n1_rwd-1),1]
      colnames(RDW1)<-c("Relative dry weight")
    }else{stop("Minimum 2 observations is required for calculation")}
  }else{warning("There is no data for calculating the Relative dry weight")}

  if (nrow(WSE_df>0)) {
    WSE1 <-as.data.frame(WSE(WSE_df[1,2],WSE_df[2,2]))
    colnames(WSE1)<-"WSE"
  }else{warning("There is no data for calculating the Weed smothering efficiency")}

  if (nrow(FDW_df >0)) {
    FDR1 <-as.data.frame(FDR(FDW_df[1,2],FDW_df[2,2]))
    colnames(FDR1)<-"FDR"
  }else{warning("There is no data for calculating the Weed smothering efficiency")}
  res_list <-list("Weed Indices" = final_indices_df,
                  "RWD"=RDW1,
                  "WSE"=WSE1,
                  "FDR" = FDR1)
  }
  print(res_list)
  path_user <- dirname(fname)
  path_user
  newfilename <- "WeedIndices_Results.xlsx"
  newfilepath <- file.path(path_user, newfilename)
  newfilepath
  
  wb = createWorkbook()
  
  #Iterate the same way as PavoDive, slightly different (creating an anonymous function inside Map())
  Map(function(data, nameofsheet){     
    addWorksheet(wb, nameofsheet)
    writeData(wb, nameofsheet, data,rowNames=TRUE)
  }, res_list, names(res_list))
  saveWorkbook(wb, file = newfilepath, overwrite = TRUE)
  return(res_list);
}
