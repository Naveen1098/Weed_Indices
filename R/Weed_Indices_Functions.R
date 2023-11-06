# Code Written by: Mr Naveen Kumar P
# Guided by: Dr. Prabhu G

#------------- Functions ----------------------------------------------------
cbind.fill <- function(...){
  nm <- list(...) 
  nm <- lapply(nm, as.matrix)
  n <- max(sapply(nm, nrow)) 
  do.call(cbind, lapply(nm, function (x) 
    rbind(x, matrix(, n-nrow(x), ncol(x))))) 
}

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
  Result <- (((YT-YC)/YC)*100)/(((WC/WT)/WC)*100);
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
  Result <- ((((YT-YC)/YC)*100)-(((WC/WT)/WC)*100))/(((WC/WT)/WC)*100);
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
All_Indices<- function(...){
  fname <- file.choose()
  sh_name<-getSheetNames(fname)
  
  if(length(sh_name)>0){
  Final_list <-list()
  for (nk in 1:length(sh_name)) {
    df <- openxlsx::read.xlsx(fname,sheet = sh_name[nk],startRow = 2)
    no_col <- ncol(df)
  
  if(no_col == 12){
      Indices_df <- df[,c(2:4)]
      Indices_df <- na.omit(Indices_df)
      
      RDW_df <- df[,c(5:6)]
      RDW_df <- na.omit(RDW_df)
      
      WSE_df <-df[,c(7:9)]
      WSE_df <- na.omit(WSE_df)
      
      FDW_df <-df[,c(10:12)]
      FDW_df <- na.omit(FDW_df)
      if(nrow(Indices_df >0)){
        if (nrow(Indices_df >=3)) {
          
          WD <- Indices_df[,1]
          WDD <-Indices_df[,2]
          YD <-Indices_df[,3]
          
          n1_WD <-length(WD)
          n1_WDD <-length(WDD)
          n1_Y <-length(YD)
          
          
          WCE <-Weed_control_efficiency(WD[n1_WD],WD[1:(n1_WD)])
          WCI <-Weed_control_index(WDD[n1_WDD],WDD[1:(n1_WDD)])
          WI<-Weed_index(YFP=YD[(n1_Y-1)],YTP=YD[1:(n1_Y)])
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
          final_indices_df <- cbind.fill("Weed control efficiency"=WCE,
                                    "Weed control index"=WCI,
                                    "Weed index"=WI,
                                    "Weed persistence index"=WPI,
                                    "Herbicide efficiency index"=HEI,
                                    "Weed management index"=WMI,
                                    "Agronomic management index"=AMI,
                                    " Integrated weed management index"=IWMI1
          )
          rownames(final_indices_df)<-df[1:(n1_WD),1]
          
        }else{stop("atleast 1 observations of treatment, weed free and control plot data is needed")}}
      else{warning("There is no data for indices calculation")  }
      
      if (nrow(RDW_df>0)) {
        if (nrow(RDW_df >=2)) {
          n1_rwd <-nrow(RDW_df)
          RDW1 <-as.data.frame(RDW(RDW_df[1:(n1_rwd),2]))
          rownames(RDW1)<-RDW_df[1:(n1_rwd),1]
          colnames(RDW1)<-c("Relative dry weight")
        }else{stop("Minimum 2 observations is required for calculation")}
      }else{warning("There is no data for calculating the Relative dry weight")}
      
      if (nrow(WSE_df>0)) {
        WSE2 <-as.data.frame(WSE(WSE_df[ ,2],WSE_df[,3]))
        WSE1 <-cbind.fill(WSE_df$Treatment,WSE2)
        WSE1 <-na.omit(WSE1)
        colnames(WSE1)<-c("Treatment","WSE")
      }else{warning("There is no data for calculating the Weed smothering efficiency")}
      
      if (nrow(FDW_df >0)) {
        FDR2 <-as.data.frame(FDR(FDW_df[ ,2],FDW_df[ ,3]))
        FDR1 <-cbind.fill(FDW_df$Treatment,FDR2)
        FDR1 <-na.omit(FDR1)
        colnames(FDR1)<-c("Treatment","FDR")
      }else{warning("There is no data for calculating the Weed smothering efficiency")}
      res_list <-list("Weed Indices" = final_indices_df,
                      "RWD"=RDW1,
                      "WSE"=WSE1,
                      "FDR" = FDR1)
    }
  else if (no_col == 9){
      Indices_df <- df[,c(2:4)]
      Indices_df <- na.omit(Indices_df)
      
      RDW_df <- df[,c(5:6)]
      RDW_df <- na.omit(RDW_df)
      
      WSE_df <-df[,c(7:8)]
      WSE_df <- na.omit(WSE_df)
      
      if(nrow(Indices_df >0)){
        if (nrow(Indices_df >=3)) {
          
          WD <- Indices_df[,1]
          WDD <-Indices_df[,2]
          YD <-Indices_df[,3]
          
          n1_WD <-length(WD)
          n1_WDD <-length(WDD)
          n1_Y <-length(YD)
          
          
          WCE <-Weed_control_efficiency(WD[n1_WD],WD[1:(n1_WD)])
          WCI <-Weed_control_index(WDD[n1_WDD],WDD[1:(n1_WDD)])
          WI<-Weed_index(YFP=YD[(n1_Y-1)],YTP=YD[1:(n1_Y)])
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
          final_indices_df <- cbind.fill("Weed control efficiency"=WCE,
                                         "Weed control index"=WCI,
                                         "Weed index"=WI,
                                         "Weed persistence index"=WPI,
                                         "Herbicide efficiency index"=HEI,
                                         "Weed management index"=WMI,
                                         "Agronomic management index"=AMI,
                                         " Integrated weed management index"=IWMI1
          )
          rownames(final_indices_df)<-df[1:(n1_WD),1]
          
        }else{stop("atleast 1 observations of treatment, weed free and control plot data is needed")}}
      else{warning("There is no data for indices calculation")  }
      
      if (nrow(RDW_df>0)) {
        if (nrow(RDW_df >=2)) {
          n1_rwd <-nrow(RDW_df)
          RDW1 <-as.data.frame(RDW(RDW_df[1:(n1_rwd),2]))
          rownames(RDW1)<-RDW_df[1:(n1_rwd),1]
          colnames(RDW1)<-c("Relative dry weight")
        }else{stop("Minimum 2 observations is required for calculation")}
      }else{warning("There is no data for calculating the Relative dry weight")}
      
      if (nrow(WSE_df>0)) {
        WSE2 <-as.data.frame(WSE(WSE_df[ ,2],WSE_df[,3]))
        WSE1 <-cbind.fill(WSE_df$Treatment,WSE2)
        WSE1 <-na.omit(WSE1)
        colnames(WSE1)<-c("Treatment","WSE")
      }else{warning("There is no data for calculating the Weed smothering efficiency")}
      
      res_list <-list("Weed Indices" = final_indices_df,
                      "RWD"=RDW1,
                      "WSE"=WSE1)
    }
  else if (no_col == 6){
      Indices_df <- df[,c(2:4)]
      Indices_df <- na.omit(Indices_df)
      
      RDW_df <- df[,c(5:6)]
      RDW_df <- na.omit(RDW_df)
      
      if(nrow(Indices_df >0)){
        if (nrow(Indices_df >=3)) {
          
          WD <- Indices_df[,1]
          WDD <-Indices_df[,2]
          YD <-Indices_df[,3]
          
          n1_WD <-length(WD)
          n1_WDD <-length(WDD)
          n1_Y <-length(YD)
          
          
          WCE <-Weed_control_efficiency(WD[n1_WD],WD[1:(n1_WD)])
          WCI <-Weed_control_index(WDD[n1_WDD],WDD[1:(n1_WDD)])
          WI<-Weed_index(YFP=YD[(n1_Y-1)],YTP=YD[1:(n1_Y)])
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
          final_indices_df <- cbind.fill("Weed control efficiency"=WCE,
                                         "Weed control index"=WCI,
                                         "Weed index"=WI,
                                         "Weed persistence index"=WPI,
                                         "Herbicide efficiency index"=HEI,
                                         "Weed management index"=WMI,
                                         "Agronomic management index"=AMI,
                                         " Integrated weed management index"=IWMI1
          )
          rownames(final_indices_df)<-df[1:(n1_WD),1]
          
        }else{stop("atleast 1 observations of treatment, weed free and control plot data is needed")}}
      else{warning("There is no data for indices calculation")  }
      
      if (nrow(RDW_df>0)) {
        if (nrow(RDW_df >=2)) {
          n1_rwd <-nrow(RDW_df)
          RDW1 <-as.data.frame(RDW(RDW_df[1:(n1_rwd),2]))
          rownames(RDW1)<-RDW_df[1:(n1_rwd),1]
          colnames(RDW1)<-c("Relative dry weight")
        }else{stop("Minimum 2 observations is required for calculation")}
      }else{warning("There is no data for calculating the Relative dry weight")}
      
      res_list <-list("Weed Indices" = final_indices_df,
                      "RWD"=RDW1)
    }
  else if (no_col == 4){
      Indices_df <- df[,c(2:4)]
      Indices_df <- na.omit(Indices_df)
      
      if(nrow(Indices_df >0)){
        if (nrow(Indices_df >=3)) {
          
          WD <- Indices_df[,1]
          WDD <-Indices_df[,2]
          YD <-Indices_df[,3]
          
          n1_WD <-length(WD)
          n1_WDD <-length(WDD)
          n1_Y <-length(YD)
          
          
          WCE <-Weed_control_efficiency(WD[n1_WD],WD[1:(n1_WD)])
          WCI <-Weed_control_index(WDD[n1_WDD],WDD[1:(n1_WDD)])
          WI<-Weed_index(YFP=YD[(n1_Y-1)],YTP=YD[1:(n1_Y)])
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
          final_indices_df <- cbind.fill("Weed control efficiency"=WCE,
                                         "Weed control index"=WCI,
                                         "Weed index"=WI,
                                         "Weed persistence index"=WPI,
                                         "Herbicide efficiency index"=HEI,
                                         "Weed management index"=WMI,
                                         "Agronomic management index"=AMI,
                                         " Integrated weed management index"=IWMI1
          )
          rownames(final_indices_df)<-df[1:(n1_WD),1]
          
        }else{stop("atleast 1 observations of treatment, weed free and control plot data is needed")}}
      else{warning("There is no data for indices calculation")  }
      
      res_list <-list("Weed Indices" = final_indices_df)
    }
  else{warning("Kindly check your excel datasheet. There is no data for indices calculation 
                or the data is not in proper arranged as pescribed by the package. 
                
                *** For data formating, Kindly visit the github webpage:
                https://github.com/Naveen1098/Weed_Indices/tree/main")  }
  Final_list[[length(Final_list)+1]]<-res_list
  }
  
  }
else{warning("Kindly check your excel datasheet. There is no data for indices calculation 
                or the data is not in proper arranged as pescribed by the package. 
                
                *** For data formating, Kindly visit the github webpage:
                https://github.com/Naveen1098/Weed_Indices/tree/main")  }
  
  WCE_df <- data.frame()
  WCI_df <- data.frame()
  WI_df <- data.frame()
  WPI_df <- data.frame()
  HEI_df <- data.frame()
  WMI_df <- data.frame()
  AMI_df <- data.frame()
  IWMI_df <- data.frame()
  RWD_df <- data.frame()
  WSE_df <- data.frame()
  FDR_df <- data.frame()
 
  
  for(kn in 1:length(sh_name)){
    df1 <- Final_list[kn]
    
    if (length(df1[[1]]) == 4){
    Ind_df <- as.data.frame(df1[[1]]$`Weed Indices`)
    WCE_df1 <- Ind_df$V1
    WCI_df1 <- Ind_df$V2
    WI_df1 <- Ind_df$V3
    WPI_df1 <- Ind_df$V4
    HEI_df1 <- Ind_df$V5
    WMI_df1 <- Ind_df$V6
    AMI_df1 <- Ind_df$V7
    IWMI_df1 <- Ind_df$V8
    RWD_df1 <- df1[[1]]$RWD
    WSE_df1 <- df1[[1]]$WSE[,2]
    FDR_df1 <- df1[[1]]$FDR[,2]
    
    WCE_df <- cbind.fill(WCE_df,WCE_df1)
    WCI_df <- cbind.fill(WCI_df,WCI_df1)
    WI_df <- cbind.fill(WI_df,WI_df1)
    WPI_df <- cbind.fill(WPI_df,WPI_df1)
    HEI_df <- cbind.fill(HEI_df,HEI_df1)
    WMI_df <- cbind.fill(WMI_df,WMI_df1)
    AMI_df <- cbind.fill(AMI_df,AMI_df1)
    IWMI_df <- cbind.fill(IWMI_df,IWMI_df1)
    RWD_df <- cbind.fill(RWD_df,RWD_df1)
    WSE_df <-cbind.fill(WSE_df,WSE_df1)
    FDR_df <- cbind.fill(FDR_df,FDR_df1)}
    
    else if (length(df1[[1]]) == 3){
      Ind_df <- as.data.frame(df1[[1]]$`Weed Indices`)
      WCE_df1 <- Ind_df$V1
      WCI_df1 <- Ind_df$V2
      WI_df1 <- Ind_df$V3
      WPI_df1 <- Ind_df$V4
      HEI_df1 <- Ind_df$V5
      WMI_df1 <- Ind_df$V6
      AMI_df1 <- Ind_df$V7
      IWMI_df1 <- Ind_df$V8
      RWD_df1 <- df1[[1]]$RWD
      WSE_df1 <- df1[[1]]$WSE[,2]
      
      WCE_df <- cbind.fill(WCE_df,WCE_df1)
      WCI_df <- cbind.fill(WCI_df,WCI_df1)
      WI_df <- cbind.fill(WI_df,WI_df1)
      WPI_df <- cbind.fill(WPI_df,WPI_df1)
      HEI_df <- cbind.fill(HEI_df,HEI_df1)
      WMI_df <- cbind.fill(WMI_df,WMI_df1)
      AMI_df <- cbind.fill(AMI_df,AMI_df1)
      IWMI_df <- cbind.fill(IWMI_df,IWMI_df1)
      RWD_df <- cbind.fill(RWD_df,RWD_df1)
      WSE_df <-cbind.fill(WSE_df,WSE_df1)
    }
    else if (length(df1[[1]]) == 2){
      Ind_df <- as.data.frame(df1[[1]]$`Weed Indices`)
      WCE_df1 <- Ind_df$V1
      WCI_df1 <- Ind_df$V2
      WI_df1 <- Ind_df$V3
      WPI_df1 <- Ind_df$V4
      HEI_df1 <- Ind_df$V5
      WMI_df1 <- Ind_df$V6
      AMI_df1 <- Ind_df$V7
      IWMI_df1 <- Ind_df$V8
      RWD_df1 <- df1[[1]]$RWD
      
      WCE_df <- cbind.fill(WCE_df,WCE_df1)
      WCI_df <- cbind.fill(WCI_df,WCI_df1)
      WI_df <- cbind.fill(WI_df,WI_df1)
      WPI_df <- cbind.fill(WPI_df,WPI_df1)
      HEI_df <- cbind.fill(HEI_df,HEI_df1)
      WMI_df <- cbind.fill(WMI_df,WMI_df1)
      AMI_df <- cbind.fill(AMI_df,AMI_df1)
      IWMI_df <- cbind.fill(IWMI_df,IWMI_df1)
      RWD_df <- cbind.fill(RWD_df,RWD_df1)
    } else if(length(df1[[1]]) == 1){
      Ind_df <- as.data.frame(df1[[1]]$`Weed Indices`)
      WCE_df1 <- Ind_df$V1
      WCI_df1 <- Ind_df$V2
      WI_df1 <- Ind_df$V3
      WPI_df1 <- Ind_df$V4
      HEI_df1 <- Ind_df$V5
      WMI_df1 <- Ind_df$V6
      AMI_df1 <- Ind_df$V7
      IWMI_df1 <- Ind_df$V8
     
      WCE_df <- cbind.fill(WCE_df,WCE_df1)
      WCI_df <- cbind.fill(WCI_df,WCI_df1)
      WI_df <- cbind.fill(WI_df,WI_df1)
      WPI_df <- cbind.fill(WPI_df,WPI_df1)
      HEI_df <- cbind.fill(HEI_df,HEI_df1)
      WMI_df <- cbind.fill(WMI_df,WMI_df1)
      AMI_df <- cbind.fill(AMI_df,AMI_df1)
      IWMI_df <- cbind.fill(IWMI_df,IWMI_df1)}
    
    }
 
  names_col <-paste0('R',(1:length(sh_name)))
  colnames(WCE_df)<-names_col
  colnames(WCI_df)<-names_col
  colnames(WI_df)<-names_col
  colnames(WPI_df)<-names_col
  colnames(HEI_df)<-names_col
  colnames(WMI_df)<-names_col
  colnames(AMI_df)<-names_col
  colnames(IWMI_df)<-names_col
  
  if(nrow(RWD_df) != 0){colnames(RWD_df)<-names_col}
  if(nrow(WSE_df) != 0){colnames(WSE_df)<-names_col}
  if(nrow(FDR_df) != 0){colnames(FDR_df)<-names_col}
  
  rownames(WCE_df)<- df[1:(n1_WD),1]
  rownames(WCI_df)<- df[1:(n1_WD),1]
  rownames(WI_df)<- df[1:(n1_WD),1]
  rownames(WPI_df)<- df[1:(n1_WD),1]
  rownames(HEI_df)<- df[1:(n1_WD),1]
  rownames(WMI_df)<- df[1:(n1_WD),1]
  rownames(AMI_df)<- df[1:(n1_WD),1]
  rownames(IWMI_df)<- df[1:(n1_WD),1]
  
  if(nrow(WSE_df) != 0){rownames(WSE_df)<- WSE1[,1]}
  if(nrow(FDR_df) != 0){rownames(FDR_df)<- FDR1[,1]}
  
 
  WCE_df<- na.omit(WCE_df)
  WCI_df<- na.omit(WCI_df)
  WI_df<- na.omit(WI_df)
  WPI_df<- na.omit(WPI_df)
  HEI_df<- na.omit(HEI_df)
  WMI_df<- na.omit(WMI_df)
  AMI_df<- na.omit(AMI_df)
  IWMI_df<- na.omit(IWMI_df)
  
  F_list <- list("Weed control efficiency"=WCE_df,
                 "Weed control index"=WCI_df,
                 "Weed index"=WI_df,
                 "Weed persistence index"=WPI_df,
                 "Herbicide efficiency index"=HEI_df,
                 "Weed management index"=WMI_df,
                 "Agronomic management index"=AMI_df,
                 "IWMI"=IWMI_df,
                 "RWD"=RWD_df,
                 "WSE"=WSE_df,
                 "FDR" = FDR_df)
  
  # print(res_list)
  path_user <- dirname(fname)
  path_user
  newfilename <- "WeedIndices_Results.xlsx"
  newfilepath <- file.path(path_user, newfilename)
  
  paste0("Saved file path:-  ",newfilepath)
  
  wb = createWorkbook()
  Map(function(data, nameofsheet){     
    addWorksheet(wb, nameofsheet)
    writeData(wb, nameofsheet, data,rowNames=TRUE)
  }, F_list, names(F_list))
  
  saveWorkbook(wb, file = newfilepath, overwrite = TRUE)
  return(F_list);
}
