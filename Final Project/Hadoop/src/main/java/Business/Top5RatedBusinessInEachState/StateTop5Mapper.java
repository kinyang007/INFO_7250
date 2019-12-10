package Business.Top5RatedBusinessInEachState;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.json.JSONObject;

import java.io.IOException;
import java.util.*;


public class StateTop5Mapper extends Mapper<LongWritable, Text, Text, BusinessWritable> {

    private HashMap<String, TreeSet<BusinessWritable>> tmap;

    @Override
    public void setup(Context context) {
        tmap = new HashMap<>();
    }

    @Override
    public void map(LongWritable key, Text value, Context context) {
        String jsonStr = value.toString();
        JSONObject object = new JSONObject(jsonStr);

        String businessId = object.getString("business_id");
        String businessName = object.getString("name");
        String state = object.getString("state");
        double rate = object.getDouble("stars");
        BusinessWritable businessWritable = new BusinessWritable(businessId, businessName, state, rate);

        TreeSet<BusinessWritable> top5set = tmap.getOrDefault(state, new TreeSet<>());
        top5set.add(businessWritable);

        if (top5set.size() > 5) {
            top5set.remove(top5set.last());
        }

        tmap.put(state, top5set);
    }

    @Override
    public void cleanup(Context context) throws IOException, InterruptedException {
        for (Map.Entry<String, TreeSet<BusinessWritable>> e : tmap.entrySet()) {
            TreeSet<BusinessWritable> top5set = e.getValue();
            for (BusinessWritable businessWritable: top5set) {
                Text key = new Text(e.getKey());
                context.write(key, businessWritable);
            }
        }
    }

}
