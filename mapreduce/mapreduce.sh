
export SalidaProceso=Output_test;
RutaUnix=/content/bigdata-colab/mapreduce;
RutaHDFS=/user/root;

hdfs dfs -rm -skipTrash -R ${RutaHDFS}/${SalidaProceso};

hadoop jar ${RutaUnix}/hadoop-streaming-2.6.02.jar -file ${RutaUnix}/mapper.py -mapper ${RutaUnix}/mapper.py -file ${RutaUnix}/reducer.py -reducer ${RutaUnix}/reducer.py -input ${RutaHDFS}/data.csv -output ${RutaHDFS}/${SalidaProceso};

exit;