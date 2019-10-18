# 4.1
$ hadoop fs -copyFromLocal NYSE /HW3/Part4
2019-10-14 15:42:35,331 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:35,458 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:35,593 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:35,610 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:35,658 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:35,862 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:35,884 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,022 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,540 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,557 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,655 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,784 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,802 INFO sasl.SaslDataTransferClilsent: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,892 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:36,908 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:37,001 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:37,187 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:37,265 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:37,300 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:37,318 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:37,523 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,123 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,255 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,304 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,316 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,339 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,395 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,466 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:38,980 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:39,400 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:39,417 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:39,492 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:39,628 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:40,063 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:40,158 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:40,260 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 15:42:40,321 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false

# Write Java Code and build jar

$ hadoop jar Part4.1/target/Part4.1-1.0-SNAPSHOT.jar Part41.MapReduce /HW3/Part4/NYSE/\* /HW3/Part4/result1
2019-10-14 18:01:24,782 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-14 18:01:25,316 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-14 18:01:25,351 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571028422321_0003
2019-10-14 18:01:25,448 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 18:01:25,575 INFO input.FileInputFormat: Total input files to process : 36
2019-10-14 18:01:25,669 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 18:01:25,684 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 18:01:25,690 INFO mapreduce.JobSubmitter: number of splits:36
2019-10-14 18:01:25,840 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 18:01:25,871 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571028422321_0003
2019-10-14 18:01:25,872 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-14 18:01:26,038 INFO conf.Configuration: resource-types.xml not found
2019-10-14 18:01:26,039 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-14 18:01:26,114 INFO impl.YarnClientImpl: Submitted application application_1571028422321_0003
2019-10-14 18:01:26,177 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571028422321_0003/
2019-10-14 18:01:26,178 INFO mapreduce.Job: Running job: job_1571028422321_0003
2019-10-14 18:01:33,338 INFO mapreduce.Job: Job job_1571028422321_0003 running in uber mode : false
2019-10-14 18:01:33,341 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-14 18:01:52,542 INFO mapreduce.Job:  map 8% reduce 0%
2019-10-14 18:01:53,552 INFO mapreduce.Job:  map 14% reduce 0%
2019-10-14 18:01:54,561 INFO mapreduce.Job:  map 17% reduce 0%
2019-10-14 18:02:07,659 INFO mapreduce.Job:  map 22% reduce 0%
2019-10-14 18:02:08,681 INFO mapreduce.Job:  map 33% reduce 0%
2019-10-14 18:02:20,766 INFO mapreduce.Job:  map 36% reduce 0%
2019-10-14 18:02:21,776 INFO mapreduce.Job:  map 47% reduce 0%
2019-10-14 18:02:28,822 INFO mapreduce.Job:  map 47% reduce 16%
2019-10-14 18:02:32,858 INFO mapreduce.Job:  map 53% reduce 16%
2019-10-14 18:02:33,876 INFO mapreduce.Job:  map 61% reduce 16%
2019-10-14 18:02:34,887 INFO mapreduce.Job:  map 61% reduce 20%
2019-10-14 18:02:42,940 INFO mapreduce.Job:  map 67% reduce 20%
2019-10-14 18:02:43,961 INFO mapreduce.Job:  map 75% reduce 20%
2019-10-14 18:02:46,986 INFO mapreduce.Job:  map 75% reduce 25%
2019-10-14 18:02:52,028 INFO mapreduce.Job:  map 83% reduce 25%
2019-10-14 18:02:53,038 INFO mapreduce.Job:  map 89% reduce 28%
2019-10-14 18:02:59,081 INFO mapreduce.Job:  map 89% reduce 30%
2019-10-14 18:03:00,088 INFO mapreduce.Job:  map 97% reduce 30%
2019-10-14 18:03:01,100 INFO mapreduce.Job:  map 100% reduce 30%
2019-10-14 18:03:05,124 INFO mapreduce.Job:  map 100% reduce 84%
2019-10-14 18:03:06,139 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-14 18:03:07,159 INFO mapreduce.Job: Job job_1571028422321_0003 completed successfully
2019-10-14 18:03:07,254 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=128173353
		FILE: Number of bytes written=264710918
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=511091427
		HDFS: Number of bytes written=27922
		HDFS: Number of read operations=113
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Launched map tasks=36
		Launched reduce tasks=1
		Data-local map tasks=36
		Total time spent by all maps in occupied slots (ms)=422767
		Total time spent by all reduces in occupied slots (ms)=57752
		Total time spent by all map tasks (ms)=422767
		Total time spent by all reduce tasks (ms)=57752
		Total vcore-milliseconds taken by all map tasks=422767
		Total vcore-milliseconds taken by all reduce tasks=57752
		Total megabyte-milliseconds taken by all map tasks=432913408
		Total megabyte-milliseconds taken by all reduce tasks=59138048
	Map-Reduce Framework
		Map input records=9211067
		Map output records=9211031
		Map output bytes=109751285
		Map output materialized bytes=128173563
		Input split bytes=4500
		Combine input records=0
		Combine output records=0
		Reduce input groups=2853
		Reduce shuffle bytes=128173563
		Reduce input records=9211031
		Reduce output records=2853
		Spilled Records=18422062
		Shuffled Maps =36
		Failed Shuffles=0
		Merged Map outputs=36
		GC time elapsed (ms)=4251
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=11177820160
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
		Bytes Written=27922
MapReduce Time: 102544 ms
$ hadoop fs -ls /HW3/Part4/result1
Found 2 items
-rw-r--r--   1 kinyang supergroup          0 2019-10-14 18:03 /HW3/Part4/result1/_SUCCESS
-rw-r--r--   1 kinyang supergroup      27922 2019-10-14 18:03 /HW3/Part4/result1/part-r-00000
$ hadoop fs -tail /HW3/Part4/result1/part-r-00000
2019-10-14 18:04:57,776 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
F	84.0
WFC	73.78
WFR	96.08
WFT	91.6
WG	62.04
WGL	45.75
WGO	75.76
WH	9.5
WHG	53.31
WHI	61.0
WHR	118.0
WHX	25.3
WIA	15.78
WIN	16.17
WIT	68.44
WIW	15.53
WL	69.25
WLK	37.7
WLL	112.42
WLP	136.5
WLT	111.99
WM	59.97
WMB	54.64
WMG	31.0
WMK	47.1
WMS	50.11
WMT	106.81
WMZ	29.18
WNC	52.89
WNI	18.61
WNR	66.13
WNS	35.83
WOR	32.5
WPC	36.86
WPI	71.5
WPK	26.0
WPO	999.5
WPP	87.99
WPS	56.81
WPZ	50.0
WR	37.66
WRB	61.2
WRC	53.89
WRD	22.0
WRE	43.44
WRI	55.46
WRS	26.78
WSF	27.84
WSH	46.64
WSM	63.5
WSO	73.6
WST	54.83
WTI	59.99
WTM	711.99
WTR	38.96
WTS	58.0
WTU	23.05
WTW	58.95
WU	28.62
WW	62.0
WWE	34.0
WWW	39.79
WWY	55.24
WX	45.65
WXS	41.12
WY	87.09
WYN	39.4
XAA	16.9
XCJ	27.24
XCO	40.93
XEC	74.5
XEL	65.5
XFB	27.57
XFD	28.1
XFH	28.34
XFJ	29.13
XFL	34.88
XFP	27.9
XFR	26.6
XIN	18.0
XJT	17.4
XKE	10.5
XKK	11.07
XKN	26.45
XKO	11.81
XL	98.48
XOM	111.25
XRM	12.7
XRX	164.0
XTO	73.74
XVF	27.3
XVG	26.4
YGE	41.5
YPF	69.98
YSI	23.61
YUM	73.87
YZC	116.73
ZAP	81.75
ZEP	24.1
ZF	13.88
ZLC	62.6
ZMH	94.38
ZNH	99.7
ZNT	73.49
ZQK	47.38
ZTR	11.13
ZZ	18.2

# 4.2
$ hadoop jar Part4.2/target/Part4.2-1.0-SNAPSHOT.jar Part42.PutMerge NYSE /HW3/Part4/NYSE/NYSE_merged.csv
NYSE_daily_prices_F.csv
2019-10-14 18:59:40,850 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
NYSE_daily_prices_0.csv
NYSE_daily_prices_Q.csv
NYSE_daily_prices_P.csv
NYSE_daily_prices_1.csv
NYSE_daily_prices_G.csv
NYSE_daily_prices_E.csv
NYSE_daily_prices_3.csv
NYSE_daily_prices_R.csv
NYSE_daily_prices_S.csv
2019-10-14 18:59:41,538 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
NYSE_daily_prices_2.csv
NYSE_daily_prices_D.csv
NYSE_daily_prices_6.csv
NYSE_daily_prices_W.csv
NYSE_daily_prices_A.csv
NYSE_daily_prices_V.csv
NYSE_daily_prices_7.csv
NYSE_daily_prices_5.csv
NYSE_daily_prices_T.csv
NYSE_daily_prices_C.csv
2019-10-14 18:59:42,124 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
NYSE_daily_prices_B.csv
NYSE_daily_prices_U.csv
NYSE_daily_prices_4.csv
NYSE_daily_prices_9.csv
NYSE_daily_prices_X.csv
NYSE_daily_prices_O.csv
NYSE_daily_prices_N.csv
NYSE_daily_prices_Y.csv
NYSE_daily_prices_8.csv
NYSE_daily_prices_L.csv
NYSE_daily_prices_M.csv
2019-10-14 18:59:42,709 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
NYSE_daily_prices_Z.csv
NYSE_daily_prices_I.csv
NYSE_daily_prices_H.csv
NYSE_daily_prices_J.csv
NYSE_daily_prices_K.csv
$ hadoop jar Part4.1/target/Part4.1-1.0-SNAPSHOT.jar Part41.MapReduce /HW3/Part4/NYSE/NYSE_merged.csv /HW3/Part4/result2
2019-10-14 19:01:16,174 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
2019-10-14 19:01:16,661 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2019-10-14 19:01:16,676 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/kinyang/.staging/job_1571028422321_0005
2019-10-14 19:01:16,789 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 19:01:16,881 INFO input.FileInputFormat: Total input files to process : 1
2019-10-14 19:01:16,920 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 19:01:16,930 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 19:01:16,936 INFO mapreduce.JobSubmitter: number of splits:4
2019-10-14 19:01:17,108 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
2019-10-14 19:01:17,117 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1571028422321_0005
2019-10-14 19:01:17,117 INFO mapreduce.JobSubmitter: Executing with tokens: []
2019-10-14 19:01:17,286 INFO conf.Configuration: resource-types.xml not found
2019-10-14 19:01:17,288 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2019-10-14 19:01:17,392 INFO impl.YarnClientImpl: Submitted application application_1571028422321_0005
2019-10-14 19:01:17,434 INFO mapreduce.Job: The url to track the job: http://MB0:8088/proxy/application_1571028422321_0005/
2019-10-14 19:01:17,435 INFO mapreduce.Job: Running job: job_1571028422321_0005
2019-10-14 19:01:24,547 INFO mapreduce.Job: Job job_1571028422321_0005 running in uber mode : false
2019-10-14 19:01:24,550 INFO mapreduce.Job:  map 0% reduce 0%
2019-10-14 19:01:43,735 INFO mapreduce.Job:  map 25% reduce 0%
2019-10-14 19:01:44,756 INFO mapreduce.Job:  map 50% reduce 0%
2019-10-14 19:01:45,768 INFO mapreduce.Job:  map 100% reduce 0%
2019-10-14 19:01:54,830 INFO mapreduce.Job:  map 100% reduce 100%
2019-10-14 19:01:54,846 INFO mapreduce.Job: Job job_1571028422321_0005 completed successfully
2019-10-14 19:01:54,941 INFO mapreduce.Job: Counters: 51
	File System Counters
		FILE: Number of bytes read=128173353
		FILE: Number of bytes written=257477000
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=511099683
		HDFS: Number of bytes written=27922
		HDFS: Number of read operations=17
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=2
		HDFS: Number of bytes read erasure-coded=0
	Job Counters
		Killed map tasks=1
		Launched map tasks=4
		Launched reduce tasks=1
		Data-local map tasks=4
		Total time spent by all maps in occupied slots (ms)=71567
		Total time spent by all reduces in occupied slots (ms)=8606
		Total time spent by all map tasks (ms)=71567
		Total time spent by all reduce tasks (ms)=8606
		Total vcore-milliseconds taken by all map tasks=71567
		Total vcore-milliseconds taken by all reduce tasks=8606
		Total megabyte-milliseconds taken by all map tasks=73284608
		Total megabyte-milliseconds taken by all reduce tasks=8812544
	Map-Reduce Framework
		Map input records=9211067
		Map output records=9211031
		Map output bytes=109751285
		Map output materialized bytes=128173371
		Input split bytes=468
		Combine input records=0
		Combine output records=0
		Reduce input groups=2853
		Reduce shuffle bytes=128173371
		Reduce input records=9211031
		Reduce output records=2853
		Spilled Records=18422062
		Shuffled Maps =4
		Failed Shuffles=0
		Merged Map outputs=4
		GC time elapsed (ms)=1740
		CPU time spent (ms)=0
		Physical memory (bytes) snapshot=0
		Virtual memory (bytes) snapshot=0
		Total committed heap usage (bytes)=2226651136
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=511099215
	File Output Format Counters
		Bytes Written=27922
MapReduce Time: 38836 ms
$ hadoop fs -ls /HW3/Part4/result2
Found 2 items
-rw-r--r--   1 kinyang supergroup          0 2019-10-14 19:01 /HW3/Part4/result2/_SUCCESS
-rw-r--r--   1 kinyang supergroup      27922 2019-10-14 19:01 /HW3/Part4/result2/part-r-00000
$ hadoop fs -tail /HW3/Part4/result2/part-r-00000
2019-10-14 19:03:20,439 INFO sasl.SaslDataTransferClient: SASL encryption trust check: localHostTrusted = false, remoteHostTrusted = false
F	84.0
WFC	73.78
WFR	96.08
WFT	91.6
WG	62.04
WGL	45.75
WGO	75.76
WH	9.5
WHG	53.31
WHI	61.0
WHR	118.0
WHX	25.3
WIA	15.78
WIN	16.17
WIT	68.44
WIW	15.53
WL	69.25
WLK	37.7
WLL	112.42
WLP	136.5
WLT	111.99
WM	59.97
WMB	54.64
WMG	31.0
WMK	47.1
WMS	50.11
WMT	106.81
WMZ	29.18
WNC	52.89
WNI	18.61
WNR	66.13
WNS	35.83
WOR	32.5
WPC	36.86
WPI	71.5
WPK	26.0
WPO	999.5
WPP	87.99
WPS	56.81
WPZ	50.0
WR	37.66
WRB	61.2
WRC	53.89
WRD	22.0
WRE	43.44
WRI	55.46
WRS	26.78
WSF	27.84
WSH	46.64
WSM	63.5
WSO	73.6
WST	54.83
WTI	59.99
WTM	711.99
WTR	38.96
WTS	58.0
WTU	23.05
WTW	58.95
WU	28.62
WW	62.0
WWE	34.0
WWW	39.79
WWY	55.24
WX	45.65
WXS	41.12
WY	87.09
WYN	39.4
XAA	16.9
XCJ	27.24
XCO	40.93
XEC	74.5
XEL	65.5
XFB	27.57
XFD	28.1
XFH	28.34
XFJ	29.13
XFL	34.88
XFP	27.9
XFR	26.6
XIN	18.0
XJT	17.4
XKE	10.5
XKK	11.07
XKN	26.45
XKO	11.81
XL	98.48
XOM	111.25
XRM	12.7
XRX	164.0
XTO	73.74
XVF	27.3
XVG	26.4
YGE	41.5
YPF	69.98
YSI	23.61
YUM	73.87
YZC	116.73
ZAP	81.75
ZEP	24.1
ZF	13.88
ZLC	62.6
ZMH	94.38
ZNH	99.7
ZNT	73.49
ZQK	47.38
ZTR	11.13
ZZ	18.2
