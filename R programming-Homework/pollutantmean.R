pollutantmean=function(directory,pollutant,id=1:332){
      
      files=list.files(directory,full.names=TRUE)
      frame=data.frame()
      for(k in id){
            frame=rbind(frame,read.csv(files[k]))
      }
      m=mean(frame[,pollutant],na.rm=TRUE)
      print(m)
}