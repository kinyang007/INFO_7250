package Business.NumersInEachCityAndState;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.json.JSONObject;

import java.io.IOException;

public class StateCityMapper extends Mapper<LongWritable, Text, StateCityKeyWritableComparable, IntWritable> {

    private IntWritable one = new IntWritable(1);

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String jsonStr = value.toString();
        JSONObject object = new JSONObject(jsonStr);

        String city = object.getString("city");
        String state = object.getString("state");
        StateCityKeyWritableComparable stateCityKeyWritableComparable = new StateCityKeyWritableComparable(state, city);

        context.write(stateCityKeyWritableComparable, one);
    }
}
