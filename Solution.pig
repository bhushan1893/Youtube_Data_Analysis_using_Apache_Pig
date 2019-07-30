--First need to create directory in HDFS.Creating a directory called youtube_data_analysis

--bin/hadoop fs -mkdir /youtube_data_analysis

--Putting DataFile(youtubedata.txt) into HDFS by Using below command

--bin/hadoop fs -put /home/bhushan/Youtube_Data_Analyzing_using_Apache_Pig /youtube_data_analysis

--(Now, Execute each usecase by removing comment)



videos = load '/youtube_data_analysis/youtubedata.txt' USING PigStorage('\t') as (id:chararray,uploader:chararray,day:int,date:int,category:chararray,length:int,views:int,rating:float,comments:int,related_video_id:chararray);


-- 1) Find out the top 5 categories with maximum number of videos uploaded.

--A = group videos by category;
--B = foreach A generate group, COUNT(videos.id);
--C = order B by $01 DESC;
--D = limit C 5;
--dump D;
--store D into '/youtube_data_analysis/Max_number0fvideo_with_top5_cat';



-- 2) Find out the top 10 rated videos.


--forech = foreach videos generate id, category, rating;  
--ordr = ORDER forech by rating DESC; 
--limt = limit ordr 10;
--dump limt;
--store limt into '/youtube_data_analysis/Top10_rated_videos';


-- 3) Find out the most viewed videos


--forech = foreach videos generate id, category, views;  
--ordr = ORDER forech by views DESC; 
--limt = limit ordr 1;
--store limt into '/youtube_data_analysis/Most_Viewed_videos';
--dump limt; 

 
