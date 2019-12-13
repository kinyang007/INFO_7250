package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.json.JSONObject;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class BusinessMapper extends Mapper<LongWritable, Text, CompositeKey, BusinessRatingData> {

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String jsonStr = value.toString();
        JSONObject object = new JSONObject(jsonStr);

        String businessId = object.getString("business_id");
        String dateString = object.getString("date");
        double rate = object.getDouble("stars");

        long timestamp = 0;

        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            timestamp = sdf.parse(dateString).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }

        CompositeKey ck = new CompositeKey(businessId, timestamp);
        BusinessRatingData brd = new BusinessRatingData(timestamp, rate);
        context.write(ck, brd);
    }

}
