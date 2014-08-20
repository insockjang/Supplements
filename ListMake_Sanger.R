# ListMake_Sanger

ListMake<-function(drug.Type,data.Type,model.Type){
  a<-switch(drug.Type,
            "ActArea" = "syn1807986",
            "IC50" = "syn1742876")  
  
  (a.1 = grep("E",data.Type))
  (a.2 = grep("C",data.Type))
  (a.3 = grep("Mh",data.Type))
  
  if(length(a.1)==1){
    KKK<-list(list(name="PriorIncorporatedLasso_Sanger.R", url="https://github.com/Sage-Bionetworks/SGLR/blob/master/PriorIncorporatedLasso_Sanger.R", wasExecuted=T),
              list(name="myData_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/myData_Sanger.R", wasExecuted=T),
              list(name = "Expression",entity="syn1742878", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F)        
    )    
  }
  
  if(length(a.2)==1){
    KKK<-list(list(name="PriorIncorporatedLasso_Sanger.R", url="https://github.com/Sage-Bionetworks/SGLR/blob/master/PriorIncorporatedLasso_Sanger.R", wasExecuted=T),
              list(name="myData_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/myData_Sanger.R", wasExecuted=T),
              list(name = "Copy Number Alteration",entity="syn1742880", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F)        
    )    
  }
  
  if(length(a.3)==1){
    KKK<-list(list(name="PriorIncorporatedLasso_Sanger.R", url="https://github.com/Sage-Bionetworks/SGLR/blob/master/PriorIncorporatedLasso_Sanger.R", wasExecuted=T),
              list(name="myData_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/myData_Sanger.R", wasExecuted=T),
              list(name = "Mutation hybrid capture sequenceing",entity="syn1757084", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F)        
    )    
  }
  
  return(KKK) 
}

ListMake1<-function(drug.Type,data.Type,model.Type,ID){
  a<-switch(drug.Type,
            "ActArea" = "syn1757078",
            "IC50" = "syn1757074")
  
  (a.1 = grep("E",data.Type))
  (a.2 = grep("C",data.Type))
  (a.3 = grep("Mh",data.Type))
  
  if(length(a.1)==1){
#     ENT<- synapseQuery("select algorithm, geneList, cIndex_train, cIndex_micma from entity where algorithm == 'Boosting' AND entity.parentId == 'syn1642232'")
#     df <- synQuery("select id, name, entity.parentId == ''")
    KKK<-list(list(name="restorePriorIncorporatedLasso_Sanger.R", url="https://github.com/Sage-Bionetworks/SGLR/blob/master/restorePriorIncorporatedLasso_Sanger.R", wasExecuted=T),
              
              list(name = "Expression",entity="syn1742878", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F),  
              list(name = "SGLR Priors",entity= ID, wasExecuted=F)  
              
    )    
  }
  
  if(length(a.2)==1){
    KKK<-list(list(name="restorePriorIncorporatedLasso_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/restorePriorIncorporatedLasso_Sanger.R", wasExecuted=T),
              
              list(name = "Copy Number Alteration",entity="syn1742880", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F),  
              list(name = "SGLR Priors",entity= ID, wasExecuted=F)        
    )    
  }
  
  if(length(a.3)==1){
    KKK<-list(list(name="restorePriorIncorporatedLasso_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/restorePriorIncorporatedLasso_Sanger.R", wasExecuted=T),
              
              list(name = "Mutation hybrid capture sequenceing",entity="syn2368559", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F),  
              list(name = "SGLR Priors",entity= ID, wasExecuted=F)        
    )    
  }
  
  return(KKK) 
}

ListMake2<-function(drug.Type,data.Type,model.Type){
  a<-switch(drug.Type,
            "ActArea" = "syn1757078",
            "IC50" = "syn1757074")
  
  (a.1 = grep("E",data.Type))
  (a.2 = grep("C",data.Type))
  (a.3 = grep("Mh",data.Type))
  
  if(length(a.1)==1){
    #     ENT<- synapseQuery("select algorithm, geneList, cIndex_train, cIndex_micma from entity where algorithm == 'Boosting' AND entity.parentId == 'syn1642232'")
    #     df <- synQuery("select id, name, entity.parentId == ''")
    KKK<-list(list(name="bsSGLR_prior_synapse.R", url="https://github.com/insockjang/SGLR/blob/master/bsSGLR_prior_synapse.R", wasExecuted=T),
              list(name="myData_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/myData_Sanger.R", wasExecuted=T),
              list(name = "Expression",entity="syn1742878", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F)  
    )    
  }
  
  if(length(a.2)==1){
    KKK<-list(list(name="bsSGLR_prior_synapse.R", url="https://github.com/insockjang/SGLR/blob/master/bsSGLR_prior_synapse.R", wasExecuted=T),
              list(name="myData_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/myData_Sanger.R", wasExecuted=T),
              list(name = "Copy Number Alteration",entity="syn1742880", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F)  
    )       
  }
  
  if(length(a.3)==1){
    KKK<-list(list(name="bsSGLR_prior_synapse.R", url="https://github.com/Sage-Bionetworks/SGLR/blob/master/bsSGLR_prior_synapse.R", wasExecuted=T),
              list(name="myData_Sanger.R", url="https://github.com/Sage-Bionetworks/PredictiveModel_pipeline/blob/master/myData_Sanger.R", wasExecuted=T),
              list(name = "Mutation hybrid capture sequenceing",entity="syn2368559", wasExecuted=F),              
              list(name = "Response",entity=a, wasExecuted=F)  
    )    
  }
  
  return(KKK) 
}