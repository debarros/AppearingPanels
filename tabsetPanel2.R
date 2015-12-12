#tabsetPanel2.R
tabsetPanel2 = function (..., id = NULL, selected = NULL, type = c("tabs", "pills"), 
                         position = c("above", "below", "left", "right")) 
{
  tabs <- list(...)
  tabs = tabs[which(!unlist(lapply(tabs,is.null)))]
  type <- match.arg(type)
  tabset <- buildTabset(tabs, paste0("nav nav-", type), NULL, 
                        id, selected)
  position <- match.arg(position)
  if (position %in% c("above", "left", "right")) {
    first <- tabset$navList
    second <- tabset$content
  }
  else if (position %in% c("below")) {
    first <- tabset$content
    second <- tabset$navList
  }
  tags$div(class = paste("tabbable tabs-", position, sep = ""), 
           first, second)
}
environment(tabsetPanel2) = environment(tabsetPanel)
