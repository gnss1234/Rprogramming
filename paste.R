# Paste function Examples 
paste('X',1:5,sep='')
paste('X',1:5,sep="")
paste(c('one','two','three','four'),collapse='and')
paste(c('one','two','three','four'),sep="and")# will work

a <- "Hello"
b <- 'How'
c <- "are you? "

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))

print(paste(a,b,c, sep = "", collapse = ""))

paste(c('X','Y'),1:5,sep='_',collapse=' and ')

paste0('X',1:5)
paste0('X',1:5,collapse=",")

paste(1:10, 101:110, letters[1:10], sep="-")
cat(1:10, 101:110, letters[1:10], sep="-")

x <- c("another", "example", "with", "a", "vector")


