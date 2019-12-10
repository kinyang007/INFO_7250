### Final Exam
1. <u><b>NLine</b></u> InputFormat which splits multiple lines of input as one split in many “pleasantly” parallel applications each process mapper process the same input files but with computations are controlled by different parameters. One way to achieve this is to specify a set of parameters as input in a control file(which is the input path to the map-reduce application where as the input dataset is specified via a config variable in JobConf). This inputFormat can be used in such applications that splits the input file such that by default one line is fed as a value to one map task, and the key is the offset. I.e (k, v) is (LongWritable, Text). The location hints will span the whole mapped cluster.

2. Which implicit assumption is correct that Hadoop’s scheduler makes  
A. Nodes can perform work at roughly the same rate.  
B. Tasks progress at a constant rate throughout time.  
C. There is no cost to launching a speculative task on a node that would otherwise have an idle slot.  
D. Tasks in the same category (map or reduce) require roughly the same amount of work.  
E. **All of the above**

3. Which one is not a typical use of Hive?  
A. Log processing  
B. Text mining  
C. Document indexing  
D. Predictive modeling and hypothesis testing  
E. **Real time transactions**  

4. What would use to run SQL queries on HBase?  
Apache Phoenix.

5. Although Mahout is in theory a project open to implementations of all kinds of machine learning techniques, it’s in practice a project that focuses on three key areas of machine learning at the moment. Currently Mahout supports the following use cases.
* Recommendation mining takes users’ behavior and from that tries to find items users might like.
* Clustering takes e.g. text documents and groups them into groups of topically related documents.
* Classification learns from exisiting categorized documents what documents of a specific category look like and is able to assign unlabelled documents to the (hopefully) correct category.
* Frequent itemset mining takes a set of item groups (terms in a query session, shopping cart content) and identifies, which individual items usually appear together.

6. Which of the following is true for Hive?  
A. Hive is the database of Hadoop  
B. Hive supports schema checking  
C. **Hive doesn’t allow row level updates**  
D. Hive can replace OLTP  
E. All of the above  

7. Which one is the optimal pragmatic and feasible option for caching 12 billion static records in a MapReduce environment?  
A. Use Oracle  
B. Use Memcached(in-memory key-value store for small chunks of arbitrary data)  
C. Use Redis(very costly in a larger cluster environment)  
D. **Use MR join between the input and 12 billion static records**  
E. Partition the 12 billion records into small chunks, use an LRU-Map hash table

8. What kind of Filtering is this?
```java
// Get the value of the comment
String commment = parsed.get('Text');
StringTokenizer tokenizer = new StringTokenizer(comment);
// For each word in the comment
while (tokenizer.hasMoreTokens()) {
    // If the word is in the filter, output the record and break.
    String word = tokenizer.nextToken();
    if (filter.membershipTest(new Key(word.getBytes()))) {
        context.write(value, NullWritable.get());
        break;
    }
}
```
Bloom Filter.

9. Give an example to demonstrate the usage of MultipleInputs class in JOIN Patterns.  
Given a set of user information and a list of user’s comments, enrich each comment with the information about the user who created the comment.  
In this example, we need two mappers -- UserJoinMapper and CommentJoinMapper. So we use MultipleInputs to set which input uses what mapper, which will keep parsing of each data set separate from a logical standpoint.
```java
MultipleInputs.addInputPath(job, new Path(args[0]), TextInputFormat.class, UserJoinMapper.class);
MultipleInputs.addInputPath(job, new Path(args[1]), TextInputFormat.class, CommentJoinMapper.class);
```

10. Mahout <u><b>Classification</b></u> techniques decide how much a thing is or isn’t part of some type or category, or how much it does or doesn’t have some attribute. It helps decide if a new input or thing matches a previously observed pattern or not, and it’s often used to classify behavior or patterns as unusual.
Mahout <u><b>Clustering</u></b> techniques attempt to group a large number of things together into groups that share some similarity. It’s a way to discover hierarchy and order in a large data set, and in that way reveal interesting patterns or make the data set easier to comprehend.

11. <u><b>Avro</b></u> is a data serialization framework developed with Apache’s Hadoop project. It uses JSON for defining data types and protocols and serializes data in a compact binary format.

12. When I run the following query on HIVE, what does actually Hadoop do?
```sql
INSERT INTO TABLE students VALUES ('fred flintstone', 35, 1.28), ('barney rubble', 32, 2.32);
```
Hadoop transform the sql query into mapreduce programs.

13. (...) the following data into Pig. Write code.
```pig
A = LOAD xxx USING PigStorage("::") AS (col1:type1, ..., coln: typen);
DUMP A;
```

14. ACID-like guarantees in distributed systems. A corresponding and logical way of assessing the problems involved in assuring ACID-like guarantees in distributed systems is to understand the following factors in such systems:
* consistence
* availability
* partition

15. Given the challenges associated with vertical scaling, horizontal scaling has for the past few years, become the scaling strategy of choice. Horizontal scaling implies systems are distributed across multiple machine or nodes. Each of these nodes can be some sort of a commodity machine that is cost effective. Anything distributed across multiple nodes is subject to fallacies of distributed computing, which is a list of assumptions in the context of distributed system that developers take for granted but often does not hole true. Which one is not a fallacy?  
A. The network is reliable secure  
B. Latency is zero  
C. Bandwidth is infinite  
D. Transport cost is zero  
E. **Vendor lock-in**  

16. Where does Sqoop ingest data from?  
A. Redis  
B. HBase  
C. **MySQL**  
D. MongoDB  
E. All of the above  

17. Write the Hadoop commands for each of the followings:
* Display the last kilobyte of the file to stdout.
```shell
hadoop fs -tail [-f] URI
```
* Permanently delete files in checkpoints older than the retention threshold from trash directory, and create new checkpoint.
```shell
hadoop fs -expunge [-immediate]
```
* Takes a source directory and a destination file as input and concatenate files in src into the destination local file.
```shell
hadoop fs -getmerge [-nl] <src> <localdst>
```

18. Complete the following methods from the WordCount job. Pay attention to the datatypes based on the code fragment.
```java
public void map(Object key, Text value, Context context) {
    StringTokenizer itr = new StringTokenizer(value.toString());
    while (itr.hasMoreTokens()) {
        word.set(itr.nextToken());
        // TO-DO
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
    result.set(sum);
    // TO-DO
    context.write(key, sum);
}
```

19. <u><b>Apache ZooKeeper</b></u> is a highly available service for maintaining small amounts of coordination data, notifying clients of changes in that data, and monitoring clients for failures. The implementation of automatic HDFS failover relies on this service for the following things:
* Failure detection- each of the NameNode machines in the cluster maintains a persistent session in this service. If the machine crashed, the session will expire, notifying the other nameNode that a failover should be triggered.
* Active NameNode election- it provides a simple mechanism to exclusively elect a node as active.

20. In Hadoop 1.0 Job Tracker is single Point of availability means if JobTracker fails, all jobs must restart. Overall Execution flow will be interrupted. Due to this limitation. In Hadoop 2.0 JobTracker concept is replaced by <u><b>yarn</b></u>. In the replacement the term JobTracker and TaskTracker has totally disappeared. This splits the two major functionalities of the JobTracker. I.e resource management and job scheduling monitoring into 2 separate daemons: Resource Manager and Node manager.

21. <u><b>Oozie</b></u> is a workflow scheduler system to manage Apache Hadoop jobs. The workflow jobs are Directed A-cyclical Graphs of actions. It is integrated with the rest of the Hadoop stack supporting serval types of Hadoop jobs out of the box(such as Java map-reduce, Streaming map-reduce, Pig, Hive, Sqoop and Distcp) as well as system specific jobs(such as Java programs and shell scripts).

22. Create a Column Family in HBase, and insert 1 column in CF.
```shell
> create 'text', 'CF'
> put 'test', 'row1', 'CF:a', 'value1'
```

23. The Apache <u><b>Thrift</b></u> software framework, for scalable cross-language services development combines a software stack with a code generation engine to build services that work efficiently and seamlessly between C++, Java, Python, PHP, Ruby, Perl, Haskell, C#, Cocoa, JavaScript, Node.js, Smalltalk, OCaml and Delphi and other language.

24. A) Explain how you could change a row key in HBase.  
Write a map reduce to scan, delete and insert all rows.  
B) Does HBase support in-place update?  
No.

25.  Which of the following Big Data Analytics could be done on a Neo4J?  
A. Depth and Breadth First Search  
B. The A* Algorithm  
C. Local Bridges  
D. Path-Finding with Dijkstra’s Algorithm  
E. **All of the above**

26. Output of the following queries:
```sql
Query 1:
MATCH (user1:User), (user2:User)
WHERE user1.Id = 123 AND user2.Id = 456
CREATE (user1)-[:FRIENDS_WITH]->(user2)
```
```sql
Query 2:
MATCH (user:User)<-[r]-()
WHERE user.Id = 123
DELETE r
```

27. Which of these provides a Stream processing system used in Hadoop ecosystem?  
A. Soir  
B. Tez  
C. **Spark**  
D. Hive  
E. Sqoop  

28. Following data contain years of birth and the names of famous hackers. What will be output on the screen when hackers are printed?
```shell
$ redis-cli zadd hackers 1940 "Alan Kay"
(integer) 1
$ redis-cli zadd hackers 1953 "Richard Stallman"
(integer) 1
$ redis-cli zadd hackers 1965 "Yukihiro Matsumoto"
(integer) 1
$ redis-cli zadd hackers 1916 "Claude Shannon"
(integer) 1
$ redis-cli zadd hackers 1969 "Linus Torvalds"
(integer) 1
$ redis-cli zadd hackers 1912 "Alan Turing"
(integer) 1
$ redis-cli zrange hackers 0 -1
```
1) "Alan Turing"  
2) "Claude Shannon"  
3) "Alan Kay"  
4) "Richard Stallman"  
5) "Yukihiro Matsumoto"  
6) "Linus Torvalds"  

29. The main role of secondary namenode is to  
A. Copy the filesystem metadata from primary namenode  
B. Copy the filesystem metadata from FS stored by primary namenode  
C. Monitor if the primary namenode is up and running  
D. **Periodically merge the namespace image with the edit log**  
E. All of the above  

30. You would use this NoSQL store for relationship intensive problems
* Social networks
* Fraud detection
* Relationship heavy data  
(a) What type of database is this(General name, not a specific DB name)  
Graph store type.  
(b) Give a database name  
Neo4j

31. Performing a WordCount implementation in Hadoop. We will count the words in all the input file flow as below  
INPUT: Assume there are 2 files each having a sentence, and there would be one mapper for each file:  
Hello World Hello World (This is file-1 content. This is not part of the input)  
Hello World Hello World (This is file-2 content. This is not part of the input)  
(a) For the given sample input the first MAP output will be as follows:  
Hello   1  
World   1  
Hello   1  
World   1  
(b) For the given sample input the second MAP output will be as follows:  
Hello   1  
World   1  
Hello   1  
World   1  
(c) Reducer output will be:  
Hello   4  
World   4  

32. What happens if number of reducers is 0?  
No reducer will execute and no aggregation will take place. In such case, we will prefer “Map-only job” in Hadoop.

33. Which of the following are NOT big data problem(s)?  
A. Parsing 5MB XML file every 5 minutes  
B. Processing IPL tweet sentiments  
C. Processing online bank transactions  
D. **Both A and C**  
E. All of the above  

34. What MapReduce operation may use the same Reducer as combiner also?  
The option must be associative and commutative.

35. How many instances of JobTracker can run on a Hadoop Cluster?  
There can only be one JobTracker in the cluster. This can be sun on the same machine run-in the NameNode.

36. Major Components of an HBase  
<u><b>ZooKeeper</b></u> A centralized service used to maintain configuration information for HBase.  
<u><b>META table</b></u> Keep track of the locations of region server and regions  
<u><b>HMaster</b></u> Monitors all region server instances in the cluster and the interface for all metadata changes  
<u><b>Region</b></u> A set of rows belonging to a table  

37. What may have caused the exception?  
```pig
A = LOAD ’data’ AS (f1:int, f2: int, f3: int);  
B = FOREACH A GENRATE $3;  
DUMP B:  
2014-08-11 3:03:46.715 [main] ERROR org.apache.pig.tools.grunt.GruntParser - java.IOException  
```
Maybe the namenode is not set up or not started format the namenode.

38. How to count number of lines in a file using Map Reduce framework?  
(a) Write the code to set the InputFormat the you would use?  
```Java
job.setInputFormatClass(TextInputFormat.class);
```
(b) Write the mapper method.  
```Java
class CountLineMapper extends Mapper<LongWritable, Text, Text, IntWritable> {
    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        context.set(new Text("Lines: "), new IntWritable(1));
    }
}
```
(c) Write the reducer method.  
```Java
class CountLineReducer extends Reducer<Text, IntWritable, Text, IntWritable> {
    private IntWritable result = new IntWritable();
    public void reduce(Text key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
        int sum = 0;
        for (IntWritable value : values) {
            sum += value.get();
        }
        result.set(sum);
        context.write(key, sum);
    }
}
```

Bloom Filter
```java
public class BloomFilteringMapper extends Mapper<Object, Text, Text, NullWritable> {
    private BloomFilter filter = new BloomFilter();

    public void setup(Context context) throws IOException, InterruptedException {
        // ...
    }

    public void map(Object key, Text value, Context context) throws IOException, InterruptedException {
        Map<String, String> parsed = // ...;

        // Get the value for the comment
        String comment = parsed.get("Text");
        StringTokenizer tokenizer = new StringTokenizer(comment);
        // for each word in the comment
        while (tokenizer.hasMoreTokens()) {
            // if the word is in the filter, output the record and break
            String word = tokenizer.nextToken();
            if (filter.membershipTest(new Key(word.getBytes()))) {
                context.write(value, NullWritable.get());
                break;
            }
        }
    }
}
```

20. Number of mappers is decided by the
A. Mappers specified by the programmer
B. Available Mapper slots
C. Available heap memory
D. **Input Splits**
E. Input Format

37. Which of the followings can be used for improving MapReduce Performance?
A. Configure your cluster correctly
B. Use LZO Compression
C. Tune the number of map and reduce tasks appropriately
D. Use the most appropriate and compact Writable type for your data
E. **All of the above**

* What is Pig?
Apache Pig is a platform for analyzing large data sets that consists of a high-level language for expressing data analysis programs, coupled with infrastructure for evaluating these programs. The salient property of Pig programs is that their structure is amenable to substantial parallelization, which in turns enables them to handle very large data sets.

* Pig Real Time Update?

* HBase TTL
ColumnFamilies can set a TTL length in seconds, and HBase will automatically delete rows once the expiration time is reached. This applies to all versions of a row - even the current one. The TTL time encoded in the HBase for the row is specified in UTC.
Store files which contains only expired rows are deleted on minor compaction. Setting hbase.store.delete.expired.storefile to false disables this feature. Setting minimum number of versions to other than 0 also disables this.
See HColumnDescriptor for more information.
Recent versions of HBase also support setting time to live on a per cell basis. See HBASE-10560 for more information. Cell TTLs are submitted as an attribute on mutation requests (Appends, Increments, Puts, etc.) using Mutation#setTTL. If the TTL attribute is set, it will be applied to all cells updated on the server by the operation. There are two notable differences between cell TTL handling and ColumnFamily TTLs:
Cell TTLs are expressed in units of milliseconds instead of seconds.
A cell TTLs cannot extend the effective lifetime of a cell beyond a ColumnFamily level TTL setting

* HBase physical table
