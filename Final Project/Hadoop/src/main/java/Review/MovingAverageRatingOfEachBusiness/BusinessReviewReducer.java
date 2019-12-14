package Review.MovingAverageRatingOfEachBusiness;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;
import java.text.*;
import java.util.*;

public class BusinessReviewReducer extends Reducer<CompositeKey, BusinessRatingData, Text, Text> {

    private Text outputKey = new Text();
    private Text outputValue = new Text();

    public void reduce(CompositeKey key, Iterable<BusinessRatingData> values, Context context) throws IOException, InterruptedException {
        MovingAverage ma = new MovingAverage(10);
        for (BusinessRatingData value : values) {
            ma.addNewNumber(value.getRate());
            double movingAverage = ma.getMovingAverage();
            DecimalFormat df = new DecimalFormat("##0.00");

            long timestamp = value.getTimestamp();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String dateString = sdf.format(new Date(timestamp));

            outputKey.set(key.getBusinessId());
            outputValue.set(dateString + "\t" + df.format(movingAverage));

            context.write(outputKey, outputValue);
        }
    }

}
