# CombineFileInputFormat
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar CombineFileInputFormat.MapReduce /HW3/Part5/CombineFileInputFormat/NYSE /HW3/Part5/CombineFileInputFormat/result
2019-10-17 23:56:34,223 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-17 23:56:34,729 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-17 23:56:34,751 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571360698518_0015
2019-10-17 23:56:34,843 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:56:34,973 INFO input.FileInputFormat: Total input files to process : 36
2019-10-17 23:56:35,003 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:56:35,015 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:56:35,020 INFO mapreduce.JobSubmitter: number of splits:1
2019-10-17 23:56:35,174 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:56:35,202 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571360698518_0015
2019-10-17 23:56:35,202 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-17 23:56:35,376 INFO conf.Configuration: resource-types.xml not found
2019-10-17 23:56:35,376 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-17 23:56:35,457 INFO impl.YarnClientImpl: Submitted application application_1571360698518_0015
2019-10-17 23:56:35,504 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571360698518_0015/
2019-10-17 23:56:35,505 INFO mapreduce.Job: Running job: job_1571360698518_0015
2019-10-17 23:56:41,635 INFO mapreduce.Job: Job job_1571360698518_0015 running in uber mode : false
2019-10-17 23:56:41,637 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-17 23:56:57,761 INFO mapreduce.Job:  map 67% reduce 0%
2019-10-17 23:57:01,801 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-17 23:57:12,892 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-17 23:57:12,904 INFO mapreduce.Job: Job job_1571360698518_0015 completed successfully
2019-10-17 23:57:12,999 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=256346724
		FILE: Number of bytes written=384971964
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=511090602
		HDFS: Number of bytes written=27922
		HDFS: Number of read operations=43
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=1
		Launched reduce tasks=1
		Other local map tasks=1
		Total time spent by all maps in occupied slots (ms)=18157
		Total time spent by all reduces in occupied slots (ms)=7635
		Total time spent by all map tasks (ms)=18157
		Total time spent by all reduce tasks (ms)=7635
		Total vcore-milliseconds taken by all map tasks=18157
		Total vcore-milliseconds taken by all reduce tasks=7635
		Total megabyte-milliseconds taken by all map tasks=18592768
		Total megabyte-milliseconds taken by all reduce tasks=7818240
	Map-Reduce Framework
		Map input records=9211067
		Map output records=9211031
		Map output bytes=109751285
		Map output materialized bytes=128173353
		Input split bytes=3675
		Combine input records=0
		Combine output records=0
		Reduce input groups=2853
		Reduce shuffle bytes=128173353
		Reduce input records=9211031
		Reduce output records=2853
		Spilled Records=27633093
		Shuffled Maps =1
		Failed Shuffles=0
		Merged Map outputs=1
		GC time elapsed (ms)=202
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=746061824
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=27922

# FixedLengthInputFormat
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar FixedLengthInputFormat.MapReduce /HW3/Part5/FixedLengthInputFormat/access2.log /HW3/Part5/FixedLengthInputFormat/result
2019-10-17 23:46:16,978 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-17 23:46:17,494 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-17 23:46:17,510 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571360698518_0012
2019-10-17 23:46:17,606 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:46:17,708 INFO input.FileInputFormat: Total input files to process : 1
2019-10-17 23:46:17,737 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:46:17,750 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:46:17,756 INFO mapreduce.JobSubmitter: number of splits:1
2019-10-17 23:46:17,917 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:46:17,939 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571360698518_0012
2019-10-17 23:46:17,939 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-17 23:46:18,110 INFO conf.Configuration: resource-types.xml not found
2019-10-17 23:46:18,111 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-17 23:46:18,196 INFO impl.YarnClientImpl: Submitted application application_1571360698518_0012
2019-10-17 23:46:18,252 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571360698518_0012/
2019-10-17 23:46:18,253 INFO mapreduce.Job: Running job: job_1571360698518_0012
2019-10-17 23:46:24,354 INFO mapreduce.Job: Job job_1571360698518_0012 running in uber mode : false
2019-10-17 23:46:24,356 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-17 23:46:29,431 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-17 23:46:33,466 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-17 23:46:33,475 INFO mapreduce.Job: Job job_1571360698518_0012 completed successfully
2019-10-17 23:46:33,551 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=807559
		FILE: Number of bytes written=2067689
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=561907
		HDFS: Number of bytes written=37271
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=1
		Launched reduce tasks=1
		Data-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=2547
		Total time spent by all reduces in occupied slots (ms)=2242
		Total time spent by all map tasks (ms)=2547
		Total time spent by all reduce tasks (ms)=2242
		Total vcore-milliseconds taken by all map tasks=2547
		Total vcore-milliseconds taken by all reduce tasks=2242
		Total megabyte-milliseconds taken by all map tasks=2608128
		Total megabyte-milliseconds taken by all reduce tasks=2295808
	Map-Reduce Framework
		Map input records=35111
		Map output records=35111
		Map output bytes=737331
		Map output materialized bytes=807559
		Input split bytes=131
		Combine input records=0
		Combine output records=0
		Reduce input groups=1945
		Reduce shuffle bytes=807559
		Reduce input records=35111
		Reduce output records=1945
		Spilled Records=70222
		Shuffled Maps =1
		Failed Shuffles=0
		Merged Map outputs=1
		GC time elapsed (ms)=259
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=591396864
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=561776
	File Output Format Counters
		Bytes Written=37271

# KeyValueTextInputFormat
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar KeyValueTextInputFormat.MapReduce /HW3/Part5/KeyValueTextInputFormat/access1.log /HW3/Part5/KeyValueTextInputFormat/result
2019-10-17 20:47:06,444 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-17 20:47:06,929 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-17 20:47:06,956 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571028422321_0007
2019-10-17 20:47:07,049 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 20:47:07,140 INFO input.FileInputFormat: Total input files to process : 1
2019-10-17 20:47:07,169 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 20:47:07,182 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 20:47:07,188 INFO mapreduce.JobSubmitter: number of splits:1
2019-10-17 20:47:07,336 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 20:47:07,345 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571028422321_0007
2019-10-17 20:47:07,345 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-17 20:47:07,508 INFO conf.Configuration: resource-types.xml not found
2019-10-17 20:47:07,510 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-17 20:47:07,807 INFO impl.YarnClientImpl: Submitted application application_1571028422321_0007
2019-10-17 20:47:07,855 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571028422321_0007/
2019-10-17 20:47:07,856 INFO mapreduce.Job: Running job: job_1571028422321_0007
2019-10-17 20:47:13,962 INFO mapreduce.Job: Job job_1571028422321_0007 running in uber mode : false
2019-10-17 20:47:13,964 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-17 20:47:19,048 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-17 20:47:24,118 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-17 20:47:24,130 INFO mapreduce.Job: Job job_1571028422321_0007 completed successfully
2019-10-17 20:47:24,204 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=709513
		FILE: Number of bytes written=1871655
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=569195
		HDFS: Number of bytes written=31931
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=1
		Launched reduce tasks=1
		Data-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=2544
		Total time spent by all reduces in occupied slots (ms)=2875
		Total time spent by all map tasks (ms)=2544
		Total time spent by all reduce tasks (ms)=2875
		Total vcore-milliseconds taken by all map tasks=2544
		Total vcore-milliseconds taken by all reduce tasks=2875
		Total megabyte-milliseconds taken by all map tasks=2605056
		Total megabyte-milliseconds taken by all reduce tasks=2944000
	Map-Reduce Framework
		Map input records=35111
		Map output records=35111
		Map output bytes=639285
		Map output materialized bytes=709513
		Input split bytes=132
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
		GC time elapsed (ms)=217
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=591921152
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=569063
	File Output Format Counters
		Bytes Written=31931

# NLineInputFormat
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar NLineInputFormat.MapReduce /HW3/Part5/NLineInputFormat/access.log /HW3/Part5/NLineInputFormat/result
2019-10-17 21:06:14,797 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-17 21:06:15,291 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-17 21:06:15,317 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571360698518_0001
2019-10-17 21:06:15,455 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 21:06:15,997 INFO input.FileInputFormat: Total input files to process : 1
2019-10-17 21:06:16,036 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 21:06:16,124 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 21:06:16,547 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 21:06:16,556 INFO mapreduce.JobSubmitter: number of splits:36
2019-10-17 21:06:16,704 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 21:06:17,140 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571360698518_0001
2019-10-17 21:06:17,140 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-17 21:06:17,330 INFO conf.Configuration: resource-types.xml not found
2019-10-17 21:06:17,331 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-17 21:06:17,897 INFO impl.YarnClientImpl: Submitted application application_1571360698518_0001
2019-10-17 21:06:17,956 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571360698518_0001/
2019-10-17 21:06:17,957 INFO mapreduce.Job: Running job: job_1571360698518_0001
2019-10-17 21:06:27,131 INFO mapreduce.Job: Job job_1571360698518_0001 running in uber mode : false
2019-10-17 21:06:27,135 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-17 21:06:34,224 INFO mapreduce.Job:  map 3% reduce 0%
2019-10-17 21:06:38,252 INFO mapreduce.Job:  map 6% reduce 0%
2019-10-17 21:06:40,264 INFO mapreduce.Job:  map 8% reduce 0%
2019-10-17 21:06:42,282 INFO mapreduce.Job:  map 11% reduce 0%
2019-10-17 21:06:43,296 INFO mapreduce.Job:  map 17% reduce 0%
2019-10-17 21:06:44,302 INFO mapreduce.Job:  map 19% reduce 0%
2019-10-17 21:06:48,328 INFO mapreduce.Job:  map 22% reduce 0%
2019-10-17 21:06:50,343 INFO mapreduce.Job:  map 25% reduce 0%
2019-10-17 21:06:52,362 INFO mapreduce.Job:  map 28% reduce 0%
2019-10-17 21:06:53,371 INFO mapreduce.Job:  map 33% reduce 0%
2019-10-17 21:06:54,381 INFO mapreduce.Job:  map 36% reduce 0%
2019-10-17 21:06:59,417 INFO mapreduce.Job:  map 39% reduce 0%
2019-10-17 21:07:02,443 INFO mapreduce.Job:  map 44% reduce 0%
2019-10-17 21:07:03,451 INFO mapreduce.Job:  map 50% reduce 0%
2019-10-17 21:07:07,481 INFO mapreduce.Job:  map 53% reduce 0%
2019-10-17 21:07:08,493 INFO mapreduce.Job:  map 53% reduce 17%
2019-10-17 21:07:10,512 INFO mapreduce.Job:  map 56% reduce 17%
2019-10-17 21:07:11,519 INFO mapreduce.Job:  map 64% reduce 17%
2019-10-17 21:07:14,536 INFO mapreduce.Job:  map 64% reduce 21%
2019-10-17 21:07:15,543 INFO mapreduce.Job:  map 67% reduce 21%
2019-10-17 21:07:18,563 INFO mapreduce.Job:  map 69% reduce 21%
2019-10-17 21:07:19,574 INFO mapreduce.Job:  map 72% reduce 21%
2019-10-17 21:07:20,582 INFO mapreduce.Job:  map 78% reduce 23%
2019-10-17 21:07:23,600 INFO mapreduce.Job:  map 81% reduce 23%
2019-10-17 21:07:26,616 INFO mapreduce.Job:  map 83% reduce 27%
2019-10-17 21:07:27,627 INFO mapreduce.Job:  map 86% reduce 27%
2019-10-17 21:07:28,638 INFO mapreduce.Job:  map 92% reduce 27%
2019-10-17 21:07:31,657 INFO mapreduce.Job:  map 94% reduce 27%
2019-10-17 21:07:32,672 INFO mapreduce.Job:  map 100% reduce 31%
2019-10-17 21:07:33,678 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-17 21:07:34,700 INFO mapreduce.Job: Job job_1571360698518_0001 completed successfully
2019-10-17 21:07:34,785 INFO mapreduce.Job: Counters: 51
	File System Counters
		FILE: Number of bytes read=709513
		FILE: Number of bytes written=9778839
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=3610380
		HDFS: Number of bytes written=31931
		HDFS: Number of read operations=113
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Killed map tasks=1
		Launched map tasks=36
		Launched reduce tasks=1
		Other local map tasks=36
		Total time spent by all maps in occupied slots (ms)=288255
		Total time spent by all reduces in occupied slots (ms)=44799
		Total time spent by all map tasks (ms)=288255
		Total time spent by all reduce tasks (ms)=44799
		Total vcore-milliseconds taken by all map tasks=288255
		Total vcore-milliseconds taken by all reduce tasks=44799
		Total megabyte-milliseconds taken by all map tasks=295173120
		Total megabyte-milliseconds taken by all reduce tasks=45874176
	Map-Reduce Framework
		Map input records=35111
		Map output records=35111
		Map output bytes=639285
		Map output materialized bytes=709723
		Input split bytes=4464
		Combine input records=0
		Combine output records=0
		Reduce input groups=1945
		Reduce shuffle bytes=709723
		Reduce input records=35111
		Reduce output records=1945
		Spilled Records=70222
		Shuffled Maps =36
		Failed Shuffles=0
		Merged Map outputs=36
		GC time elapsed (ms)=2704
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=8191475712
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=3605916
	File Output Format Counters
		Bytes Written=31931

# SequenceFileInputFormat
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar SequenceFileInputFormat.WriteSequenceFile access.log /HW3/Part5/SequenceFileInputFormat/access.seq
2019-10-17 22:45:09,386 INFO zlib.ZlibFactory: Successfully loaded & initialized native-zlib library
2019-10-17 22:45:09,388 INFO compress.CodecPool: Got brand-new compressor [.deflate]
2019-10-17 22:45:09,596 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar SequenceFileInputFormat.MapReduce /HW3/Part5/SequenceFileInputFormat/access.seq /HW3/Part5/SequenceFileInputFormat/result
2019-10-17 22:46:03,862 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-17 22:46:04,368 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-17 22:46:04,382 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571360698518_0006
2019-10-17 22:46:04,493 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 22:46:04,597 INFO input.FileInputFormat: Total input files to process : 1
2019-10-17 22:46:04,621 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 22:46:04,636 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 22:46:04,644 INFO mapreduce.JobSubmitter: number of splits:1
2019-10-17 22:46:04,787 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 22:46:04,809 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571360698518_0006
2019-10-17 22:46:04,809 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-17 22:46:04,988 INFO conf.Configuration: resource-types.xml not found
2019-10-17 22:46:04,989 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-17 22:46:05,107 INFO impl.YarnClientImpl: Submitted application application_1571360698518_0006
2019-10-17 22:46:05,166 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571360698518_0006/
2019-10-17 22:46:05,167 INFO mapreduce.Job: Running job: job_1571360698518_0006
2019-10-17 22:46:12,262 INFO mapreduce.Job: Job job_1571360698518_0006 running in uber mode : false
2019-10-17 22:46:12,263 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-17 22:46:16,341 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-17 22:46:21,393 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-17 22:46:21,405 INFO mapreduce.Job: Job job_1571360698518_0006 completed successfully
2019-10-17 22:46:21,485 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=709513
		FILE: Number of bytes written=1871277
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=1201540
		HDFS: Number of bytes written=31931
		HDFS: Number of read operations=9
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=1
		Launched reduce tasks=1
		Data-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=2534
		Total time spent by all reduces in occupied slots (ms)=2322
		Total time spent by all map tasks (ms)=2534
		Total time spent by all reduce tasks (ms)=2322
		Total vcore-milliseconds taken by all map tasks=2534
		Total vcore-milliseconds taken by all reduce tasks=2322
		Total megabyte-milliseconds taken by all map tasks=2594816
		Total megabyte-milliseconds taken by all reduce tasks=2377728
	Map-Reduce Framework
		Map input records=35111
		Map output records=35111
		Map output bytes=639285
		Map output materialized bytes=709513
		Input split bytes=131
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
		GC time elapsed (ms)=78
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=485490688
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=1201409
	File Output Format Counters
		Bytes Written=31931

# TextInputFormat
$ hadoop jar Part5/target/Part5-1.0-SNAPSHOT.jar TextInputFormat.MapReduce /HW3/Part5/TextInputFormat/access.log /HW3/Part5/TextInputFormat/result
2019-10-17 23:59:48,737 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-17 23:59:49,257 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-17 23:59:49,279 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571360698518_0016
2019-10-17 23:59:49,379 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:59:49,478 INFO input.FileInputFormat: Total input files to process : 1
2019-10-17 23:59:49,519 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:59:49,534 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:59:49,539 INFO mapreduce.JobSubmitter: number of splits:1
2019-10-17 23:59:49,687 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-17 23:59:49,710 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571360698518_0016
2019-10-17 23:59:49,710 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-17 23:59:49,883 INFO conf.Configuration: resource-types.xml not found
2019-10-17 23:59:49,884 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-17 23:59:49,969 INFO impl.YarnClientImpl: Submitted application application_1571360698518_0016
2019-10-17 23:59:50,010 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571360698518_0016/
2019-10-17 23:59:50,011 INFO mapreduce.Job: Running job: job_1571360698518_0016
2019-10-17 23:59:56,090 INFO mapreduce.Job: Job job_1571360698518_0016 running in uber mode : false
2019-10-17 23:59:56,091 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-18 00:00:01,176 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-18 00:00:05,212 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-18 00:00:06,237 INFO mapreduce.Job: Job job_1571360698518_0016 completed successfully
2019-10-18 00:00:06,316 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=709513
		FILE: Number of bytes written=1871157
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=3462679
		HDFS: Number of bytes written=31931
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=1
		Launched reduce tasks=1
		Data-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=2648
		Total time spent by all reduces in occupied slots (ms)=2276
		Total time spent by all map tasks (ms)=2648
		Total time spent by all reduce tasks (ms)=2276
		Total vcore-milliseconds taken by all map tasks=2648
		Total vcore-milliseconds taken by all reduce tasks=2276
		Total megabyte-milliseconds taken by all map tasks=2711552
		Total megabyte-milliseconds taken by all reduce tasks=2330624
	Map-Reduce Framework
		Map input records=35111
		Map output records=35111
		Map output bytes=639285
		Map output materialized bytes=709513
		Input split bytes=123
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
		GC time elapsed (ms)=307
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=593494016
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
