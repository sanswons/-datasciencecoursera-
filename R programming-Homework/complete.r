complete=function(directory,id=1:332){
      
      files=list.files(directory,full.names=TRUE)
      frame=data.frame()
      ans=data.frame()
      ncom=data.frame()
      for(k in id)
      {
            frame=read.csv(files[k])
            good=complete.cases(frame)
            ncom=cbind(id=k,nobs=nrow(frame[good,]))
            ans=rbind(ans,ncom)
            
      } 
      print(ans)
}