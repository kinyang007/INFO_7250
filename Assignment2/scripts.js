// 2.1
map = function() {
  emit(String(this.stock_symbol), this.stock_price_high);
}

reduce = function(key, value) {
  return Array.avg(value);
}

db.nyse.mapReduce(map, reduce, {query: {}, out: "AvgValue21"})

// 2.2
map = function() {
  emit(String(this.stock_symbol), {count: 1, price: this.stock_price_high});
}

reduce = function(key, value) {
  reducedVal = {count: 0, price: 0};
  for (var idx = 0; idx < value.length; idx++) {
    reducedVal.count += value[idx].count;
    reducedVal.price += value[idx].price;
  }
  return reducedVal;
}

finalize = function(key, value) {
  value.avg = value.price / value.count;
  return value;
}

db.nyse.mapReduce(map, reduce, {query: {}, out: "AvgValue22", finalize: finalize})

// 3
map = function() {
  emit(String(this.stock_symbol), {
    count: 1,
    stock_price_open: this.stock_price_open,
    stock_price_high: this.stock_price_high,
    stock_price_low: this.stock_price_low,
    stock_price_close: this.stock_price_close,
    stock_price_adj_close: this.stock_price_adj_close
  });
}

reduce = function(key, value) {
  reducedVal = {count: 0, stock_price_open: 0, stock_price_high: 0, stock_price_low: 0, stock_price_close: 0, stock_price_adj_close: 0};
  for (var idx = 0; idx < value.length; idx++) {
    reducedVal.count += value[idx].count;
    reducedVal.stock_price_open += value[idx].stock_price_open;
    reducedVal.stock_price_high += value[idx].stock_price_high;
    reducedVal.stock_price_low += value[idx].stock_price_low;
    reducedVal.stock_price_close += value[idx].stock_price_close;
    reducedVal.stock_price_adj_close += value[idx].stock_price_adj_close;
  }
  return reducedVal;
}

finalize = function(key, value) {
  finalVal = {};
  finalVal.stock_price_open_avg = value.stock_price_open / value.count;
  finalVal.stock_price_high_avg = value.stock_price_high / value.count;
  finalVal.stock_price_low_avg = value.stock_price_low / value.count;
  finalVal.stock_price_close_avg = value.stock_price_close / value.count;
  finalVal.stock_price_adj_close_avg = value.stock_price_adj_close / value.count;
  return finalVal;
}

db.nyse.mapReduce(map, reduce, {query: {}, out: "AvgPrices", finalize: finalize})

// 4
db.createCollection("nyse1")
db.nyse1.createIndex({stock_symbol: 1, stock_price_open: -1, stock_price_high: -1, stock_price_low: -1, stock_price_close: -1, stock_volume: -1, stock_price_adj_close: -1})
db.nyse.find().forEach(function(x) { db.nyse1.insert(x); })

// 5
db.createCollection("nyse2")
db.nyse.find().forEach(function(x) { db.nyse2.insert(x); })
db.nyse2.createIndex({stock_symbol: 1, stock_price_open: -1, stock_price_high: -1, stock_price_low: -1, stock_price_close: -1, stock_volume: -1, stock_price_adj_close: -1})

// 6.1
map = function() {
  emit(this.MovieID, {count: 1, rating: this.Rating});
}

reduce = function(key, value) {
  reducedVal = {count: 0, rating: 0};
  for (var idx = 0; idx < value.length; idx++) {
    reducedVal.count += value[idx].count;
    reducedVal.rating += value[idx].rating;
  }
  return reducedVal;
}

finalize = function(key, value) {
  value.avg_rating = value.rating / value.count;
  return value;
}

db.ratings.mapReduce(map, reduce, {query: {}, out: "AvgRatings", finalize: finalize})

db.AvgRatings.find().sort({avg_rating: -1}).limit(25)

// 6.2
map = function() {
  emit(this.Gender, 1);
}

reduce = function(key, value) {
  return Array.sum(value);
}

db.users_1m.mapReduce(map, reduce, {query: {}, out: "NumOfGender"})

// 6.3
map = function() {
  emit(this.UserID, this.MovieID)
}

reduce = function(key, value) {
  reducedVal = {count: 0};
  val = Array.from(new Set(value));
  for (var idx = 0; idx < val.length; idx++) {
    reducedVal.count += 1;
  }
  return reducedVal;
}

db.ratings.mapReduce(map, reduce, {query: {}, out: "RatedPerUser"})
