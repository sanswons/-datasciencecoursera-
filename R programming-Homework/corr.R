corr=function(directory,threshold=0){
      
      files=list.files(directory,full.names=TRUE)
      frame=data.frame()
      x=NULL
      for(i in 1:332)
      {
            frame=read.csv(files[i])
            good=complete.cases(frame)
            if(nrow(frame[good,])>threshold)
            {
                  x[i]=cor(frame$sulfate,frame$nitrate,use="pairwise.complete.obs")
                  temp=1
            }
            else{
                  temp=0
            }
            
      }
      if(temp==1){
            print(x[complete.cases(x)])   
      }
      else
      {
            print(x)
      }
      
      
      
}