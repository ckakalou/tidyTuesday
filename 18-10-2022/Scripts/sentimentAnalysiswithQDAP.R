library(qdap)
library(magrittr)

dialoguesDFSeason1 <- dialoguesDF[dialoguesDF$season == 1,]
dialoguesDFSeason2 <- dialoguesDF[dialoguesDF$season == 2,]
dialoguesDFSeason3 <- dialoguesDF[dialoguesDF$season == 3,]
dialoguesDFSeason4 <- dialoguesDF[dialoguesDF$season == 4,]
# check_text(dialoguesDFSeason4$dialogue)
dialoguesDFSeason1$dialogueComplete <-add_incomplete(dialoguesDFSeason1$dialogue)
resultsSeason1 <- with(dialoguesDFSeason1, polarity(dialogueComplete, list(episode, season)))
#(poldatSeason1 <- with(sentSplit(dialoguesDFSeason1, 'dialogueComplete'), polarity(dialogueComplete)))
resultsCountsSeason1 <- counts(resultsSeason1)
resultsScoresSeason1 <- scores(resultsSeason1)
plot(resultsSeason1)


dialoguesDFSeason2$dialogueComplete <-add_incomplete(dialoguesDFSeason2$dialogue)
resultsSeason2 <- with(dialoguesDFSeason2, polarity(dialogueComplete, list(episode, season)))
#(poldatSeason2 <- with(sentSplit(dialoguesDFSeason2, 'dialogueComplete'), polarity(dialogueComplete)))
resultsCountsSeason2 <- counts(resultsSeason2)
resultsScoresSeason2 <- scores(resultsSeason2)
plot(resultsSeason2)

dialoguesDFSeason3$dialogueComplete <-add_incomplete(dialoguesDFSeason3$dialogue)
resultsSeason3 <- with(dialoguesDFSeason3, polarity(dialogueComplete, list(episode, season)))
#(poldatSeason3 <- with(sentSplit(dialoguesDFSeason3, 'dialogueComplete'), polarity(dialogueComplete)))
resultsCountsSeason3 <- counts(resultsSeason3)
resultsScoresSeason3 <- scores(resultsSeason3)
plot(resultsSeason3)

dialoguesDFSeason4$dialogueComplete <-add_incomplete(dialoguesDFSeason4$dialogue)
resultsSeason4 <- with(dialoguesDFSeason4, polarity(dialogueComplete, list(episode, season)))
#(poldatSeason4 <- with(sentSplit(dialoguesDFSeason4, 'dialogueComplete'), polarity(dialogueComplete)))
resultsCountsSeason4 <- counts(resultsSeason4)
resultsScoresSeason4 <- scores(resultsSeason4)
plot(resultsSeason4)


