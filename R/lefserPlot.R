lefserPlot <- function(scores_df){
  group <- ifelse(scores_df$scores > 0, 1, 0)
  scores_df$group <- as.factor(group)
  return(ggplot(scores_df, aes(reorder(Names, scores), scores)) +ylab("LDA SCORE (log 10)") +
           theme(axis.title.y = element_blank(),
                 axis.title.x =element_text(size=11,face="bold"),
                 axis.text.y  = element_text(vjust=0.7, size=9,face="bold"),
                 axis.text.x  = element_text(vjust=0.7, size=9,face="bold"),
                 plot.title = element_text(hjust=0.5, size=13, face="bold"))+
           geom_bar(stat = "identity",aes(fill = group))+
           scale_fill_manual(values=c("red", "forestgreen"))+
           coord_flip())
}