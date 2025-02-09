package Part42;

import org.apache.hadoop.conf.*;
import org.apache.hadoop.fs.*;

import java.io.IOException;

public class PutMerge {
    public static void main(String args[]) throws IOException {
        Configuration conf = new Configuration();
        FileSystem hdfs = FileSystem.get(conf);
        FileSystem local = FileSystem.getLocal(conf);

        Path inputDir = new Path(args[0]);
        Path hdfsFile = new Path(args[1]);

        FileStatus[] inputFiles = local.listStatus(inputDir);
        FSDataOutputStream out = hdfs.create(hdfsFile);
        for (int i = 0; i < inputFiles.length; i++) {
            System.out.println(inputFiles[i].getPath().getName());
            FSDataInputStream in = local.open(inputFiles[i].getPath());
            byte buffer[] = new byte[256];
            int bytesRead = 0;
            while ((bytesRead = in.read(buffer)) > 0) {
                out.write(buffer, 0, bytesRead);
            }
            in.close();
        }
        out.close();
    }
}
