library(networkD3)

nodes = data.frame("name" = 
                     c("Total", "Cash", "Pos", "p2p", "1off","Cash", "Pos", "p2p", "1off", 
                       "Cash", "Pos", "p2p", "Cash", "Pos", "p2p", "2 off", "Cash", "Pos",
                       "p2p", "2 off", "Cash", "Pos", "p2p", "2 off", "Cash", "Pos", 
					   "p2p", "2 off", "Cash", "Pos", "p2p", "2 off", "Cash", "Pos", 
					   "p2p", "2 off", "Cash", "Pos", "p2p", "2 off", "Cash", "Pos", 
					   "p2p", "2off", "Cash","Pos", "p2p", "Cash", "Pos", "p2p"))

links = as.data.frame(matrix(c(
  0, 1, 80, 1,
  0, 2, 18, 2,
  0, 3, 20, 3,
  1, 4, 22, 1,
  1, 5, 60, 1,
  1, 6, 18, 2,
  1, 7, 1, 3,
  2, 8, 2, 2,
  2, 9, 26, 1,
  2, 10, 70, 2,
  2, 11, 3, 3,
  3, 12, 13, 1,
  3, 13, 27, 2,
  3, 14, 60, 3,
  5, 15, 9, 1,
  5, 16, 76, 1,
  5, 17, 15, 2,
  5, 18, 1, 3,
  6, 19, 3, 2,
  6, 20, 36, 1,
  6, 21, 61, 2,
  6, 22, 1, 3,
  7, 23, 3, 1,
  7, 24, 35, 1,
  7, 25, 22, 2,
  7, 26, 40, 3,
  9, 27, 3, 2,
  9, 28, 49, 1,
  9, 29, 48, 2,
  9, 30, 1, 3,
  10, 31, 1, 2,
  10, 32, 21, 1,
  10, 33, 76, 2,
  10, 34, 2, 3,
  11, 35, 1, 2,
  11, 36, 10, 1,
  11, 37, 44, 2,
  11, 38, 44, 3,
  12, 39, 6, 3,
  12, 40, 60, 1,
  12, 41, 16, 2,
  12, 42, 18, 3,
  13, 43, 1, 3,
  13, 44, 6, 1,
  13, 45, 59, 2,
  13, 46, 34, 3,
  14, 47, 9, 1,
  14, 48, 24, 2,
  14, 49, 67, 3), 
  byrow = TRUE, ncol = 4))

names(links) = c("source", "target", "value", "link_group")

links$link_group <- as.character(links$link_group)

networkD3::sankeyNetwork(Links = links, Nodes = nodes,
              Source = "source", Target = "target",
              Value = "value", NodeID = "name",
              fontSize= 15, nodeWidth = 10, nodePadding = 5, 
              LinkGroup = "link_group", NodeGroup = NULL,
              fontFamily = "Century Gothic",
              colourScale = JS("d3.scaleOrdinal(d3.schemeCategory20);")) #%>% saveNetwork(file = 'Net1.html')



