#script for assignment 1 of coursera stats one class
#load data set, plot histograms, and display summary statistics

library(psych)

#read in file
Data <- read.delim("~/Stats1/hw1/DAA.01.txt")

#split file by condition subsets
des <- subset(data, cond=="des")
aer <- subset(data, cond=="aer")

#set up 2 x 4 subplots
layout(matrix(c(1:8),2,4, byrow=True))

#plot all samples by condition
hist(des$pre.wm.s)
hist(des$post.wm.s)
hist(des$pre.wm.v)
hist(des$post.wm.v)
hist(aer$pre.wm.s)
hist(aer$post.wm.s)
hist(aer$pre.wm.v)
hist(aer$post.wm.v)

#display summary statistics for both subsets
describe(des)
describe(aer)


