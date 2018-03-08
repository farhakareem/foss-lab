pdftotext sem2.pdf
cp sem2.txt sem2t.txt
tr -d '\n' <sem2t.txt >sem2sl.txt
tr -d ' ' <sem2sl.txt >sem2t.txt
sed -i 's/MDL/\nMDL/g' sem2t.txt
grep '^MDL16CS' sem2t.txt>sem2sl.txt
cp sem2sl.txt sem2t.txt
sed -i 's/(O)/ 10/g' sem2t.txt
sed -i 's/(A+)/ 9/g' sem2t.txt
sed -i 's/(A)/ 8.5/g' sem2t.txt
sed -i 's/(B+)/ 8/g' sem2t.txt
sed -i 's/(B)/ 7/g' sem2t.txt
sed -i 's/(C)/ 6/g' sem2t.txt
sed -i 's/(P)/ 5/g' sem2t.txt
sed -i 's/(F)/ 0/g' sem2t.txt
sed -i 's/CY100/  4/g' sem2t.txt
sed -i 's/MA102/4/g' sem2t.txt
sed -i 's/BE100/4/g' sem2t.txt
sed -i 's/BE102/3/g' sem2t.txt
sed -i 's/EC100/3/g' sem2t.txt
sed -i 's/,CS100/ 3/g' sem2t.txt
sed -i 's/,CS120/ 1/g' sem2t.txt
sed -i 's/EC110/1/g' sem2t.txt
sed -i 's/CY110/1/g' sem2t.txt
sed -i 's/,/ /g' sem2t.txt
awk '{ print ($1" "($2 * $3 + $4 * $5 + $6 * $7 + $8 * $9 + $10 * $11 + $12 * $13 + $14 * $15 + $16 * $17 + $18 * $19) /24) }' sem2t.txt > sem2sl.txt
pdftotext sem1.pdf
cp sem1.txt sem1t.txt
tr -d '\n' <sem1t.txt >sem1sl.txt
tr -d ' ' <sem1sl.txt >sem1t.txt
sed -i 's/MDL/\nMDL/g' sem1t.txt
grep '^MDL16CS' sem1t.txt>sem1sl.txt
cp sem1sl.txt sem1t.txt
sed -i 's/(O)/ 10/g' sem1t.txt
sed -i 's/(A+)/ 9/g' sem1t.txt
sed -i 's/(A)/ 8.5/g' sem1t.txt
sed -i 's/(B+)/ 8/g' sem1t.txt
sed -i 's/(B)/ 7/g' sem1t.txt
sed -i 's/(C)/ 6/g' sem1t.txt
sed -i 's/(P)/ 5/g' sem1t.txt
sed -i 's/(F)/ 0/g' sem1t.txt
sed -i 's/MA101/  4/g' sem1t.txt
sed -i 's/PH100/4/g' sem1t.txt
sed -i 's/BE110/3/g' sem1t.txt
sed -i 's/BE10105/3/g' sem1t.txt
sed -i 's/BE103/3/g' sem1t.txt
sed -i 's/EE100/3/g' sem1t.txt
sed -i 's/PH110/1/g' sem1t.txt
sed -i 's/EE110/1/g' sem1t.txt
sed -i 's/,CS110/ 1/g' sem1t.txt
sed -i 's/,/ /g' sem1t.txt
awk '{ print ($1" "($2 * $3 + $4 * $5 + $6 * $7 + $8 * $9 + $10 * $11 + $12 * $13 + $14 * $15 + $16 * $17 + $18 * $19) /23) }' sem1t.txt > sem1sl.txt
paste sem1sl.txt sem2sl.txt | awk '{print $1,$2,$4}' > both.txt
awk '{ print ($1" "($2 + $3) /2) }' both.txt > cgpa.txt
wget http://14.139.184.212/ask/c4b/c4b.txt
join -1 6 -2 1 -o 1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.2 c4b.txt cgpa.txt>1.txt
