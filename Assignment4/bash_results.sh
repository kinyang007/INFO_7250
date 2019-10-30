# Part3
$ hadoop jar Part3/target/Part3-1.0-SNAPSHOT.jar Part3.MapReduce /NYSE /HW4/Part3/result
2019-10-30 03:27:06,417 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-30 03:27:06,906 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-30 03:27:06,921 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1572418577217_0003
2019-10-30 03:27:07,032 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:27:07,174 INFO input.FileInputFormat: Total input files to process : 36
2019-10-30 03:27:07,207 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:27:07,221 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:27:07,229 INFO mapreduce.JobSubmitter: number of splits:36
2019-10-30 03:27:07,483 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:27:07,509 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1572418577217_0003
2019-10-30 03:27:07,509 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-30 03:27:07,667 INFO conf.Configuration: resource-types.xml not found
2019-10-30 03:27:07,668 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-30 03:27:07,731 INFO impl.YarnClientImpl: Submitted application application_1572418577217_0003
2019-10-30 03:27:07,769 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1572418577217_0003/
2019-10-30 03:27:07,770 INFO mapreduce.Job: Running job: job_1572418577217_0003
2019-10-30 03:27:14,909 INFO mapreduce.Job: Job job_1572418577217_0003 running in uber mode : false
2019-10-30 03:27:14,913 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-30 03:27:35,114 INFO mapreduce.Job:  map 8% reduce 0%
2019-10-30 03:27:36,130 INFO mapreduce.Job:  map 11% reduce 0%
2019-10-30 03:27:37,138 INFO mapreduce.Job:  map 14% reduce 0%
2019-10-30 03:27:38,146 INFO mapreduce.Job:  map 17% reduce 0%
2019-10-30 03:27:52,240 INFO mapreduce.Job:  map 33% reduce 0%
2019-10-30 03:28:08,332 INFO mapreduce.Job:  map 47% reduce 0%
2019-10-30 03:28:14,366 INFO mapreduce.Job:  map 47% reduce 16%
2019-10-30 03:28:20,404 INFO mapreduce.Job:  map 56% reduce 16%
2019-10-30 03:28:21,417 INFO mapreduce.Job:  map 61% reduce 16%
2019-10-30 03:28:26,450 INFO mapreduce.Job:  map 61% reduce 20%
2019-10-30 03:28:29,466 INFO mapreduce.Job:  map 67% reduce 20%
2019-10-30 03:28:30,474 INFO mapreduce.Job:  map 75% reduce 20%
2019-10-30 03:28:32,487 INFO mapreduce.Job:  map 75% reduce 25%
2019-10-30 03:28:37,518 INFO mapreduce.Job:  map 81% reduce 25%
2019-10-30 03:28:38,528 INFO mapreduce.Job:  map 89% reduce 27%
2019-10-30 03:28:44,561 INFO mapreduce.Job:  map 100% reduce 30%
2019-10-30 03:28:49,602 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-30 03:28:50,617 INFO mapreduce.Job: Job job_1572418577217_0003 completed successfully
2019-10-30 03:28:50,740 INFO mapreduce.Job: Counters: 51
	File System Counters
		FILE: Number of bytes read=432137382
		FILE: Number of bytes written=872651813
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=511091067
		HDFS: Number of bytes written=93620
		HDFS: Number of read operations=113
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Killed map tasks=1
		Launched map tasks=36
		Launched reduce tasks=1
		Data-local map tasks=36
		Total time spent by all maps in occupied slots (ms)=438284
		Total time spent by all reduces in occupied slots (ms)=56865
		Total time spent by all map tasks (ms)=438284
		Total time spent by all reduce tasks (ms)=56865
		Total vcore-milliseconds taken by all map tasks=438284
		Total vcore-milliseconds taken by all reduce tasks=56865
		Total megabyte-milliseconds taken by all map tasks=448802816
		Total megabyte-milliseconds taken by all reduce tasks=58229760
	Map-Reduce Framework
		Map input records=9211067
		Map output records=9211031
		Map output bytes=413715308
		Map output materialized bytes=432137586
		Input split bytes=4140
		Combine input records=0
		Combine output records=0
		Reduce input groups=2853
		Reduce shuffle bytes=432137586
		Reduce input records=9211031
		Reduce output records=2853
		Spilled Records=18422062
		Shuffled Maps =36
		Failed Shuffles=0
		Merged Map outputs=36
		GC time elapsed (ms)=5073
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=11611930624
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=511086927
	File Output Format Counters
		Bytes Written=93620
MapReduce Time: 104399 ms

# Part 4
$ hadoop jar Part4/target/Part4-1.0-SNAPSHOT.jar Part4.MapReduce /NYSE /HW4/Part4/result
2019-10-30 03:29:17,616 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-30 03:29:18,061 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-30 03:29:18,076 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1572418577217_0004
2019-10-30 03:29:18,195 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:29:18,725 INFO input.FileInputFormat: Total input files to process : 36
2019-10-30 03:29:18,770 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:29:18,792 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:29:18,807 INFO mapreduce.JobSubmitter: number of splits:36
2019-10-30 03:29:18,958 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 03:29:18,980 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1572418577217_0004
2019-10-30 03:29:18,980 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-30 03:29:19,151 INFO conf.Configuration: resource-types.xml not found
2019-10-30 03:29:19,151 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-30 03:29:19,216 INFO impl.YarnClientImpl: Submitted application application_1572418577217_0004
2019-10-30 03:29:19,271 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1572418577217_0004/
2019-10-30 03:29:19,272 INFO mapreduce.Job: Running job: job_1572418577217_0004
2019-10-30 03:29:26,393 INFO mapreduce.Job: Job job_1572418577217_0004 running in uber mode : false
2019-10-30 03:29:26,400 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-30 03:29:44,605 INFO mapreduce.Job:  map 3% reduce 0%
2019-10-30 03:29:45,620 INFO mapreduce.Job:  map 11% reduce 0%
2019-10-30 03:29:46,630 INFO mapreduce.Job:  map 14% reduce 0%
2019-10-30 03:29:47,641 INFO mapreduce.Job:  map 17% reduce 0%
2019-10-30 03:30:01,727 INFO mapreduce.Job:  map 19% reduce 0%
2019-10-30 03:30:02,738 INFO mapreduce.Job:  map 33% reduce 0%
2019-10-30 03:30:17,840 INFO mapreduce.Job:  map 47% reduce 0%
2019-10-30 03:30:23,875 INFO mapreduce.Job:  map 47% reduce 16%
2019-10-30 03:30:27,902 INFO mapreduce.Job:  map 56% reduce 16%
2019-10-30 03:30:28,912 INFO mapreduce.Job:  map 61% reduce 16%
2019-10-30 03:30:29,931 INFO mapreduce.Job:  map 61% reduce 19%
2019-10-30 03:30:34,964 INFO mapreduce.Job:  map 61% reduce 20%
2019-10-30 03:30:36,982 INFO mapreduce.Job:  map 72% reduce 20%
2019-10-30 03:30:37,998 INFO mapreduce.Job:  map 75% reduce 20%
2019-10-30 03:30:41,016 INFO mapreduce.Job:  map 75% reduce 25%
2019-10-30 03:30:43,029 INFO mapreduce.Job:  map 78% reduce 25%
2019-10-30 03:30:46,048 INFO mapreduce.Job:  map 89% reduce 25%
2019-10-30 03:30:47,053 INFO mapreduce.Job:  map 89% reduce 30%
2019-10-30 03:30:50,073 INFO mapreduce.Job:  map 92% reduce 30%
2019-10-30 03:30:52,090 INFO mapreduce.Job:  map 100% reduce 30%
2019-10-30 03:30:53,099 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-30 03:30:54,113 INFO mapreduce.Job: Job job_1572418577217_0004 completed successfully
2019-10-30 03:30:54,191 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=108397
		FILE: Number of bytes written=8600283
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=511091067
		HDFS: Number of bytes written=65596
		HDFS: Number of read operations=113
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=36
		Launched reduce tasks=1
		Data-local map tasks=36
		Total time spent by all maps in occupied slots (ms)=416286
		Total time spent by all reduces in occupied slots (ms)=50733
		Total time spent by all map tasks (ms)=416286
		Total time spent by all reduce tasks (ms)=50733
		Total vcore-milliseconds taken by all map tasks=416286
		Total vcore-milliseconds taken by all reduce tasks=50733
		Total megabyte-milliseconds taken by all map tasks=426276864
		Total megabyte-milliseconds taken by all reduce tasks=51950592
	Map-Reduce Framework
		Map input records=9211067
		Map output records=9211031
		Map output bytes=337591335
		Map output materialized bytes=108607
		Input split bytes=4140
		Combine input records=9211031
		Combine output records=2853
		Reduce input groups=2853
		Reduce shuffle bytes=108607
		Reduce input records=2853
		Reduce output records=2853
		Spilled Records=5706
		Shuffled Maps =36
		Failed Shuffles=0
		Merged Map outputs=36
		GC time elapsed (ms)=4037
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=11400642560
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=511086927
	File Output Format Counters
		Bytes Written=65596
MapReduce Time: 96640 ms

# Part5
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar Part5.MapReduce /NYSE /HW4/Part5/result
2019-10-30 04:26:37,689 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-30 04:26:38,150 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-30 04:26:38,164 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1572418577217_0006
2019-10-30 04:26:38,268 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 04:26:38,386 INFO input.FileInputFormat: Total input files to process : 36
2019-10-30 04:26:38,415 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 04:26:38,433 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 04:26:38,445 INFO mapreduce.JobSubmitter: number of splits:36
2019-10-30 04:26:38,599 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 04:26:39,025 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1572418577217_0006
2019-10-30 04:26:39,025 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-30 04:26:39,191 INFO conf.Configuration: resource-types.xml not found
2019-10-30 04:26:39,191 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-30 04:26:39,268 INFO impl.YarnClientImpl: Submitted application application_1572418577217_0006
2019-10-30 04:26:39,324 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1572418577217_0006/
2019-10-30 04:26:39,325 INFO mapreduce.Job: Running job: job_1572418577217_0006
2019-10-30 04:26:45,474 INFO mapreduce.Job: Job job_1572418577217_0006 running in uber mode : false
2019-10-30 04:26:45,475 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-30 04:27:03,726 INFO mapreduce.Job:  map 11% reduce 0%
2019-10-30 04:27:04,738 INFO mapreduce.Job:  map 17% reduce 0%
2019-10-30 04:27:17,842 INFO mapreduce.Job:  map 19% reduce 0%
2019-10-30 04:27:18,846 INFO mapreduce.Job:  map 22% reduce 0%
2019-10-30 04:27:19,853 INFO mapreduce.Job:  map 33% reduce 0%
2019-10-30 04:27:32,927 INFO mapreduce.Job:  map 39% reduce 0%
2019-10-30 04:27:33,937 INFO mapreduce.Job:  map 47% reduce 0%
2019-10-30 04:27:39,984 INFO mapreduce.Job:  map 47% reduce 16%
2019-10-30 04:27:47,027 INFO mapreduce.Job:  map 50% reduce 16%
2019-10-30 04:27:48,038 INFO mapreduce.Job:  map 58% reduce 16%
2019-10-30 04:27:49,046 INFO mapreduce.Job:  map 61% reduce 16%
2019-10-30 04:27:52,062 INFO mapreduce.Job:  map 61% reduce 20%
2019-10-30 04:28:00,107 INFO mapreduce.Job:  map 67% reduce 20%
2019-10-30 04:28:01,120 INFO mapreduce.Job:  map 75% reduce 20%
2019-10-30 04:28:04,144 INFO mapreduce.Job:  map 75% reduce 25%
2019-10-30 04:28:09,168 INFO mapreduce.Job:  map 78% reduce 25%
2019-10-30 04:28:10,175 INFO mapreduce.Job:  map 81% reduce 26%
2019-10-30 04:28:11,179 INFO mapreduce.Job:  map 89% reduce 26%
2019-10-30 04:28:16,206 INFO mapreduce.Job:  map 89% reduce 30%
2019-10-30 04:28:17,211 INFO mapreduce.Job:  map 92% reduce 30%
2019-10-30 04:28:18,221 INFO mapreduce.Job:  map 100% reduce 30%
2019-10-30 04:28:19,229 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-30 04:28:20,245 INFO mapreduce.Job: Job job_1572418577217_0006 completed successfully
2019-10-30 04:28:20,365 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=18150
		FILE: Number of bytes written=8420385
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=511091067
		HDFS: Number of bytes written=1142
		HDFS: Number of read operations=113
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=36
		Launched reduce tasks=1
		Data-local map tasks=36
		Total time spent by all maps in occupied slots (ms)=445535
		Total time spent by all reduces in occupied slots (ms)=59521
		Total time spent by all map tasks (ms)=445535
		Total time spent by all reduce tasks (ms)=59521
		Total vcore-milliseconds taken by all map tasks=445535
		Total vcore-milliseconds taken by all reduce tasks=59521
		Total megabyte-milliseconds taken by all map tasks=456227840
		Total megabyte-milliseconds taken by all reduce tasks=60949504
	Map-Reduce Framework
		Map input records=9211067
		Map output records=9211031
		Map output bytes=147376496
		Map output materialized bytes=18360
		Input split bytes=4140
		Combine input records=9211031
		Combine output records=1008
		Reduce input groups=49
		Reduce shuffle bytes=18360
		Reduce input records=1008
		Reduce output records=49
		Spilled Records=2016
		Shuffled Maps =36
		Failed Shuffles=0
		Merged Map outputs=36
		GC time elapsed (ms)=4198
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=10973872128
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=511086927
	File Output Format Counters
		Bytes Written=1142

# Part6
$ hadoop jar Part6/target/Part6-1.0-SNAPSHOT.jar Part6.MapReduce /access.log /HW4/Part6/result
2019-10-30 07:19:13,946 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-30 07:19:14,463 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-30 07:19:14,494 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1572428823680_0003
2019-10-30 07:19:14,604 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 07:19:15,154 INFO input.FileInputFormat: Total input files to process : 1
2019-10-30 07:19:15,194 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 07:19:15,223 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 07:19:15,643 INFO mapreduce.JobSubmitter: number of splits:1
2019-10-30 07:19:15,820 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-30 07:19:15,834 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1572428823680_0003
2019-10-30 07:19:15,834 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-30 07:19:16,014 INFO conf.Configuration: resource-types.xml not found
2019-10-30 07:19:16,014 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-30 07:19:16,117 INFO impl.YarnClientImpl: Submitted application application_1572428823680_0003
2019-10-30 07:19:16,182 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1572428823680_0003/
2019-10-30 07:19:16,183 INFO mapreduce.Job: Running job: job_1572428823680_0003
2019-10-30 07:19:43,508 INFO mapreduce.Job: Job job_1572428823680_0003 running in uber mode : false
2019-10-30 07:19:43,510 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-30 07:19:49,717 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-30 07:19:55,774 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-30 07:19:56,796 INFO mapreduce.Job: Job job_1572428823680_0003 completed successfully
2019-10-30 07:19:56,918 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=709513
		FILE: Number of bytes written=1880363
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=3462653
		HDFS: Number of bytes written=188
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=1
		Launched reduce tasks=1
		Data-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=3833
		Total time spent by all reduces in occupied slots (ms)=2890
		Total time spent by all map tasks (ms)=3833
		Total time spent by all reduce tasks (ms)=2890
		Total vcore-milliseconds taken by all map tasks=3833
		Total vcore-milliseconds taken by all reduce tasks=2890
		Total megabyte-milliseconds taken by all map tasks=3924992
		Total megabyte-milliseconds taken by all reduce tasks=2959360
	Map-Reduce Framework
		Map input records=35111
		Map output records=35111
		Map output bytes=639285
		Map output materialized bytes=709513
		Input split bytes=97
		Combine input records=0
		Combine output records=0
		Reduce input groups=1945
		Reduce shuffle bytes=709513
		Reduce input records=35111
		Reduce output records=10
		Spilled Records=70222
		Shuffled Maps =1
		Failed Shuffles=0
		Merged Map outputs=1
		GC time elapsed (ms)=103
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=404750336
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
		Bytes Written=188
