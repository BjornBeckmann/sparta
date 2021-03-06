change_colnames<-function(data=NULL,new_names=NULL,old_names)
{
  if(length(new_names)!=length(old_names)) stop('new_names and old_names must be the same length')
  new_names<-new_names[!is.na(old_names)]
  old_names<-old_names[!is.na(old_names)]
  
  for(i in 1:length(old_names)){
    names(data)<-gsub(old_names[i],new_names[i],names(data))  
  }
  return(data)  
}
