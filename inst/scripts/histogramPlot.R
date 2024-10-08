suppressMessages(library(lefser))
data(zeller14)
zeller14 <- zeller14[, zeller14$study_condition != "adenoma"]
tn <- get_terminal_nodes(rownames(zeller14))
zeller14tn <- zeller14[tn,]
zeller14tn_ra <- relativeAb(zeller14tn)

resClass <- lefser(
    zeller14tn_ra, classCol = "study_condition"
)
resSubClass <- lefser(
    zeller14tn_ra, classCol = "study_condition", subclassCol = "age_category"
)
## Plot one feature
plotClass <- lefserPlotFeat(resClass, resClass$features[[1]], colors = "c")
plotClass
plotSubClass <- lefserPlotFeat(resSubClass, resSubClass$features[[1]], colors = "c")
plotSubClass
sessioninfo::session_info()



