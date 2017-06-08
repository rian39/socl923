l = readLines('essay_marking.md')
ls = l[which(l != '')]
#ls
names = grep(ls, pattern = '^# ')
names_clean = sub(x=ls[names], pattern='# ', replacement='')
df = data.frame(stud=names_clean, grade=ls[names+1], general=ls[names+2], argument=ls[names+3], methods=ls[names+4], writing=ls[names+5])
#df
write.csv(df, 'marks_table.csv')
