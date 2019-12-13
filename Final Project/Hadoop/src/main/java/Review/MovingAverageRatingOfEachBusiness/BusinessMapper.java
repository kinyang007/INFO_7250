package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.json.JSONObject;

import java.io.IOException;

public class BusinessMapper extends Mapper<LongWritable, Text, CompositeKey, BusinessRatingData> {

    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String jsonStr = value.toString();
        JSONObject object = new JSONObject(jsonStr);

        String businessId = object.getString("business_id");
        String name = object.getString("name");

        context.write(new CompositeKey(businessId, name), new BusinessRatingData(name));
    }

}
