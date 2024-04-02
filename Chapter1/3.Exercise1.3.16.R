source("1.BirthdayParadox.R")
for (i in (1:365)){
  if ((bday(i)>=0.5) && (bday(i-1)<0.5)){
    print(i);
    break;
  }
}