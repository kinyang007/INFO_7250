package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.json.JSONObject;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BusinessMapper extends Mapper<LongWritable, Text, CompositeKey, DoubleWritable> {

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String jsonStr = value.toString();
        JSONObject object = new JSONObject(jsonStr);

        String businessId = object.getString("business_id");
        String dateString = object.getString("date");
        double rate = object.getDouble("stars");

        Date timestamp = null;

        try {
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            timestamp = format.parse(dateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }



    }

}
