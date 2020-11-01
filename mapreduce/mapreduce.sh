
export Fecha=$(date +'%Y%m%d');
export SalidaProceso=Output_${Fecha};
RutaUnix=/content/mapreduce/;
RutaHDFS=/user/root/;

hdfs dfs -rm -R /content/${SalidaProceso};

hadoop jar ${RutaUnix}/hadoop-streaming-2.6.0 2.jar -file ${RutaUnix}/mapper.py -mapper ${RutaUnix}/mapper.py -file ${RutaUnix}/reducer.py -reducer ${RutaUnix}/reducer.py -input ${RutaHDFS}/data.csv -output ${RutaHDFS}/${SalidaProceso};

exit;