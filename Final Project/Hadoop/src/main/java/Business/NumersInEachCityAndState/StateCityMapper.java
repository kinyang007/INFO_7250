package Business.NumersInEachCityAndState;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.json.JSONObject;

import java.io.IOException;

public class StateCityMapper extends Mapper<LongWritable, Text, StateCityKeyWritable, IntWritable> {

    private IntWritable one = new IntWritable(1);

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String jsonStr = value.toString();
        JSONObject object = new JSONObject(jsonStr);

        String city = object.getString("city");
        String state = object.getString("state");
        StateCityKeyWritable stateCityKeyWritable = new StateCityKeyWritable(state, city);

        context.write(stateCityKeyWritable, one);
    }
}
