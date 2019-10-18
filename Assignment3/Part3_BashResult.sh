$ hadoop fs -copyFromLocal access.log /HW3/Part3
2019-10-14 12:50:24,455 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false

# Write Java Code and build jar

$ hadoop jar Part3/target/Part3-1.0-SNAPSHOT.jar Part3.MapReduce /HW3/Part3/access.log /HW3/Part3/results
2019-10-14 13:25:24,826 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-14 13:25:25,594 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-14 13:25:25,624 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571028422321_0001
2019-10-14 13:25:25,807 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 13:25:25,946 INFO input.FileInputFormat: Total input files to process : 1
2019-10-14 13:25:25,986 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 13:25:26,001 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 13:25:26,008 INFO mapreduce.JobSubmitter: number of splits:1
2019-10-14 13:25:26,177 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 13:25:26,203 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571028422321_0001
2019-10-14 13:25:26,205 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-14 13:25:26,438 INFO conf.Configuration: resource-types.xml not found
2019-10-14 13:25:26,439 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-14 13:25:27,026 INFO impl.YarnClientImpl: Submitted application application_1571028422321_0001
2019-10-14 13:25:27,080 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571028422321_0001/
2019-10-14 13:25:27,081 INFO mapreduce.Job: Running job: job_1571028422321_0001
2019-10-14 13:25:36,219 INFO mapreduce.Job: Job job_1571028422321_0001 running in uber mode : false
2019-10-14 13:25:36,221 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-14 13:25:42,353 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-14 13:25:47,399 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-14 13:25:47,411 INFO mapreduce.Job: Job job_1571028422321_0001 completed successfully
2019-10-14 13:25:47,509 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=709513
		FILE: Number of bytes written=1871047
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=3462663
		HDFS: Number of bytes written=31931
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=1
		Launched reduce tasks=1
		Data-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=3395
		Total time spent by all reduces in occupied slots (ms)=2522
		Total time spent by all map tasks (ms)=3395
		Total time spent by all reduce tasks (ms)=2522
		Total vcore-milliseconds taken by all map tasks=3395
		Total vcore-milliseconds taken by all reduce tasks=2522
		Total megabyte-milliseconds taken by all map tasks=3476480
		Total megabyte-milliseconds taken by all reduce tasks=2582528
	Map-Reduce Framework
		Map input records=35111
		Map output records=35111
		Map output bytes=639285
		Map output materialized bytes=709513
		Input split bytes=107
		Combine input records=0
		Combine output records=0
		Reduce input groups=1945
		Reduce shuffle bytes=709513
		Reduce input records=35111
		Reduce output records=1945
		Spilled Records=70222
		Shuffled Maps =1
		Failed Shuffles=0
		Merged Map outputs=1
		GC time elapsed (ms)=82
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=483917824
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=3462556
	File Output Format Counters
		Bytes Written=31931
$ hadoop fs -ls /HW3/Part3/results
Found 2 items
-rw-r--r--   1 kinyang supergroup          0 2019-10-14 13:25 /HW3/Part3/results/_SUCCESS
-rw-r--r--   1 kinyang supergroup      31931 2019-10-14 13:25 /HW3/Part3/results/part-r-00000
$ hadoop fs -tail /HW3/Part3/results/part-r-00000
2019-10-14 13:30:47,145 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
91.121.87.93	40
91.126.95.39	1
91.135.233.22	1
91.135.235.139	3
91.143.102.196	1
91.143.209.5	1
91.205.189.15	3
91.213.197.3	84
91.225.98.87	2
91.241.13.27	1
91.57.108.189	1
92.240.68.152	15
92.240.68.153	8
92.42.51.165	1
92.52.78.238	1
92.68.44.161	1
93.114.41.133	8
93.152.157.19	1
93.174.93.52	3
93.187.141.154	96
93.190.138.111	6
93.63.221.11	1
93.63.226.228	1
93.81.45.207	2
94.101.85.203	34
94.102.51.246	11
94.103.146.231	34
94.127.67.61	34
94.127.68.85	30
94.129.139.190	1
94.142.155.123	4
94.176.167.251	1
94.198.184.134	1
94.23.195.105	5
94.23.205.180	40
94.23.235.146	40
94.23.45.14	8
94.23.61.43	40
94.23.7.115	40
94.90.115.82	1
95.0.87.28	1
95.110.208.32	1
95.142.103.184	27
95.142.8.34	1
95.172.16.234	1
95.211.13.144	1
96.127.129.174	39
96.237.102.14	2
96.55.51.38	1
96.9.174.54	1
97.66.135.194	2
97.78.176.82	1
98.100.186.95	35
98.114.34.162	6
98.124.178.144	6
98.143.169.213	3
98.174.140.238	2
98.216.59.134	3
98.217.117.57	6
98.217.124.237	1
98.217.196.55	15
98.229.25.220	2
98.229.69.153	2
99.15.75.165	1
