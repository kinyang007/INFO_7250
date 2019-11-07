## Mid-Term
1. What is the communication channel between client and namenode/datanode in Hadoop?  
**SSH**.

2. The <u><b>secondary namenode</b></u> constantly reads the data from the RAM of the Namenode and writes it into the hard disk or the file system. It is not a substitute to the Namenode, so if the Namenode fails, the entire Hadoop system goes down.  

3. Is there a HDFS command to see available free space in HDFS? If yes, show how it is done.  
    ```shell
    $ hdfs dfs -df
    ```

4. Which one is a good candidate for MapReduce?  
A. Real-time processing.  
B. When your intermediate processes need to talk to each other.  
**C. When your processing requires lot of data to be shuffled over the network.**  
D. When you can get the desired result with a standalone system.  
E. Distributed sort  

5. What happens when two clients try to write into the same HDFS file?  
*HDFS provides support only for exclusive writes so **when one client is already writing the file, the other client cannot open the file in write mode.** When the client requests the NameNode to open the file for writing, NameNode provides lease to the client for writing to the file. So, if another client requests for lease on the same it will be rejected.*  

6. HDFS block size is larger as compared to the size of the disk blocks so that  
A. Only HDFS files can be stored in the disk used  
B. The seek time is maximum  
C. Transfer of a large files made of multiple disk blocks is not possible  
**D. A single file larger than the disk size can be stored across many disks in the cluster**  
E. All of the above

7. The output of a mapper task is  
A. The Key-value pair of all the records of the dataset  
**B. The Key-value pair of all the records from the input split processed by the mapper**  
C. Only the sorted Keys from the input split  
D. The number of rows processed by the mapper task  
E. All of the above  

8. Which of the following is not a goal of HDFS?  
A. Fault detection and recovery  
B. Handle huge dataset  
**C. Prevent deletion of data**  
D. Provide high network bandwidth for data movement  
E. None of the above  

9. Which demon is responsible for replication of data in Hadoop?  
A. HDFS  
B. Task Tracker  
C. Job Tracker  
**D. Name Node**  
E. Data Node  

10. hadoop fs -expunge  
A. Gives the list of datanodes  
B. Used to delete a file  
C. Used to exchange a file between two datanodes  
**D. Empties the trash**  
E. None of the above  

11. In a Hadoop cluster, what is true for a HDFS block that is no longer available due to dick corruption or machine failure?  
A. It is lost forever  
**B. It can be replicated form its alternative locations to other live machines**  
C. The namenode allows new client request to keep trying to read it  
D. The Mapreduce job process runs ignoring the block and the data stored in it.  
E. None of the above  

12. The heartbeat signal are sent from  
A. Job tracker to Task tracker  
**B. Task tracker to Job tracker**  
C. Job tracker to Namenode  
D. Task tracker to Namenode  
E. None of the above  

13. How would you add the following record (decide which fields may be needed) via the Mongo shell  
*John Doe, john.doe@northeastern.edu, 94129*
    ```javascript
    > db.createCollection("people")
    > db.people.insertOne({
        name: "John Doe",
        email: "john.doe@northeastern.edu",
        zip: "94129"
    })
    ```

14. How would you query to get a list of only those people who are in 10001 zip from mongo shell?
    ```javascript
    > db.people.find({ zip: "10001" })
    ```

15. To avoid complete loss during a system failure, it's advisable to set up <u><b>replication</b></u>. Two MongoDB instances can be set up in a master-slave arrangement to keep the data in synch. This is an asynchronous process so changes aren't propagated as soon as they occur.

16. <u><b>Sharding</b></u> is the process of storing data records across multiple machines and is MongoDB's approach to meeting the demands of data growth.  

17. A) Where the Mapper's Intermediate data will be stored in Hadoop?  
**Local file system.**  
B) Can Reducers talk with each other?  
**No.**

18. What is the Hadoop MapReduce API contract for a key and value Class?  
The key must implement <u><b>WritableComparable interface</b></u>.  
The value must implement <u><b>Writable interface</b></u>.

19. Where is HDFS replication factor controlled?  
A. mapred-site.xml  
B. yarn-site.xml  
C. core-site.xml  
**D. hdfs-site.xml**  
E. none of the above  

20. Number of mappers is decided by the  
A. Mappers specified by the programmer  
B. Available Mapper slots  
C. Available heap memory  
**D. Input Splits**  
E. Input Format  

21. I want to find `MAX_STOCK_PRICE` of `OPENING_PRICE` for each `STOCK_SYMBOL`, and I want the values to be sorted by `OPENING_DATE`.  
A) What is the name of this technique to sort the values?  
  **Secondary Sort**  
B) What would you use as a key, what would you use as a value?  
*Key: A WritableComparable object contains `STOCK_SYMBOL`, `OPENING_DATE` and `OPENING_PRICE`.*  
*Value: A NullWritable Object.* 

22. Which of the following operations can't use the same Reducer as combiner?  
A. Group by Minimum  
B. Group by Maximum  
C. Group by Count  
**D. Group by Average**  
E. Group by Sum  

23. In <u><b>Text</b></u> input format, each line in the file is a record. Value is the content of the line while Key is the byte offset of the line.  
For instance, Key: LongWritable, and Value: Text.

24. Who will initiate the mapper?  
**A. Task tracker**  
B. Job tracker  
C. Combiner  
D. Reducer  

25. Suppose Hadoop spawned 100 tasks for a job and one of the task failed. What will Hadoop do?  
*It will restart the task again on some other Task Tracker and only if the task fails more than four (the default setting and can be changed) times will it kill the job.*  

26. In Hadoop, logical division of data is known as <u><b>Split</b></u> while physical division of data is known as <u><b>HDFS Block</b></u>.  
In Hadoop, what is the input type/format in MapReduce by default? <u><b>TextInputFormat</b></u>.

27. Is there is any need for Combiner for finding the Max using MR? If yes, Write the combiner class with all the necessary methods, but leave the body of the methods empty?
    ```java
    public class Combiner extends Reducer<KEYIN, VALUEIN, KEYOUT, VALUEOUT> {
        public void reduce(KEYIN key, Iterable<VALUEIN> values, Context context) throws IOException, InterruptedException {
            
        }
    }
    ```

28. Complete the following methods from the WordCount job. Pay attention to the datatypes based on the code fragment.
    ```java
    public void map(Object key, Text value, Context context) {
        StringTokenizer itr = new StringTokenizer(value.toString());
        while (itr.hasMoreTokens()) {
            word.set(itr.nextToken());
            // TODO
            context.write(word, new IntWritable(1));
        }
    }
    ```
    ```java
    private IntWritable result = new IntWritable();
    public void reduce(Text key, Iterable<IntWritable> values, Context context) {
        int sum = 0;
        for (IntWritable val : values) {
            sum += val.get();
        }
        // TODO
        result.set(sum);
        context.write(key, result);
    }
    ```

29. TRUE or FALSE:  
<u><b>True</b></u> Partitioning and Binning partition data into smaller datasets.  
<u><b>True</b></u> Partitioning and Binning do the same thing: move the records in our data set into categories.  
<u><b>True</b></u> Binning splits data in the Mapper phase however Partitioning does it using partitioners. In Binning, reducers step is not required.

30. It is possible without doing anything extra to store videos/images into HDFS. Hadoop provides us the facility to read/write binary files. So, practically anything which can be converted into bytes can be stored into HDFS(images, videos etc). To do that Hadoop provides something (type or file format) called as <u><b>SequenceFiles</b></u>.

31. How do you set the number of Reducers?
    ```java
    job.setNumReduceTasks(10);
    ```

32. When is the earliest point at which the reduce method of a given Reducer can be called?  
A. As soon as at least one mapper has finished processing its input split.  
B. As soon as a mapper has emitted at least one record.  
**C. Not until all mappers have finished processing all records.**  
D. It depends on the InputFormat used for the job.

33. Refer to the following Reducer code:
    ```java
    if (listA.isEmpty() ^ listB.isEmpty()) {
        for (Text A : listA) {
            context.write(A, EMPTY_TEXT);
        }
        for (Text B : listB) {
            context.write(EMPTY_TEXT, B);
        }
    }
    ```
    A) What kind of Join pattern is this?   
    **Antijoin**  
    B) In this implementation, will a combiner will provide much optimization? Why or Why not?  
    **No.** *Because the join logic is performed on the reduce side.* 
34. If the file_a is small enough to fit into the memory, you get a drastic benefit using <u><b>Replicated</b></u> Join because there is no reduce phase at all, and therefore no shuffling or sorting. The join is done entirely in the map phase, with the very large data set being the input for the MapReduce job.  
This type of JOIN is limited to the following types of JOINS:   
**Inner Join**, **Left Outer Join**

35. Write the names of two MapReduce data organization patterns:  
**Structed to Hierarchical Pattern**, **Partitioning Pattern**, **Binning Pattern**, **Total Order Sorting Pattern**, **Shuffling Pattern**

36. Complete the following code: 
    ```java
    public static class DistinctUserReducer extends Reducer<Text, NullWritable, Text, NullWritable> {
        public void reduce(Text key, Iterable<NullWritable> values, Context context) throws IOException, InterruptedException {
            // Write the user's id with a null value
            context.write(key, NullWritable.get());
        }
    }
    ```

37. Which of the followings can be used for improving MapReduce Performance?  
A. Configure your cluster correctly  
B. Use LZO Compression  
C. Tune the number of map and reduce tasks appropriately  
D. Use the most appropriate and compact Writable type for your data  
**E. All of the above**  

38. The following is not permitted on HDFS files  
A. Deleting  
B. Renaming  
C. Moving  
**D. Executing**  
E. None of the above  

39. Write the hadoop commands for each of the followings:  
Command Display last kilobyte of the file to stdout:
    ```shell
    $ hadoop fs -tail [-f] URI
    ```
    Permanently delete files in checkpoints older than the retention threshold from trash directory, and create new checkpoint: 
    ```shell
    $ hadoop fs -expunge [-immediate]
    ``` 
    Takes a source directory and a destination file as input and concatenates files in src into the destination local file:  
    ```shell
    $ hadoop fs -getmerge [-nl] <src> <localdst>
    ```

40. How to count number of lines in a file using Map Reduce framework?  
A) Write the code to set the InputFormat that you would use?  

    ```java
    job.setInputFormatClass(TextInputFormat.class);
    ```
    
    B) Write the mapper method. 

    ```java
    public class XXXMapper extends Mapper<LongWritable, Text, Text, IntWritable> {
        private Text result = new Text("");
        private IntWritable one = new IntWritable(1);
        public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
            context.write(result, one);
        }
    }
    ```

