#Felipe Montes
#XML Parsing 
#Taken from Nolan, Deborah, and Duncan Temple Lang. 2013. XML and Web Technologies for Data Sciences with R. 2014 edition. New York: Springer

#setwd("C:/Felipe/XML/XML and Web Technologies for Data Sciences with R")

#Install necesary packages

#install.packages("XML")


#Call to use the installed packages

library("XML")


#Chapter 1 examples
#1.2 Examples






u = "http://en.wikipedia.org/wiki/Country_population"
(tbls = readHTMLTable(u))

sapply(tbls, nrow)


#1.3 Examples

doc = xmlParse("kiva_lender.xml")

kivaList = xmlToList(doc, addAttributes = FALSE)

names(kivaList)

lendersNode = xmlRoot(doc)[["lenders"]]

lenders = xmlToDataFrame(xmlChildren(lendersNode))

head(lenders)

#Trial with ! year of Hydroterre Data
#Parsing the hydroterre XML document 
Forcing1<-xmlParse("HT_Forcing.xml")
xmlRoot(Forcing1)


#Reading the XML Schema of the parsed XMl document
#PIHM.Schema<-readSchema(Forcing1)


