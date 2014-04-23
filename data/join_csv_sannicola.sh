echo "x,y,title" > sannicola_osm_data.csv
totcsv=`cat extract_sannicola.sql | wc -l`
for i in `seq $totcsv`; 
do 
	cat $i.csv >> sannicola_osm_data.csv; 
	rm $i.csv
done


