package Review.MovingAverageRatingOfEachBusiness;

import java.util.*;

public class MovingAverage {

    private double sum = 0.0;
    private final int period;
    private final Queue<Double> window = new LinkedList<>();

    public MovingAverage(int period) {
        this.period = period;
    }

    public void addNewNumber(double number) {
        sum += number;
        window.add(number);
        if (window.size() > period) {
            sum -= window.remove();
        }
    }

    public double getMovingAverage() {
        return sum / window.size();
    }
}
