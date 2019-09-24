// Number of times any webpage was visited by the same IP address
map = function() {
	emit(this.ip, 1);
};

reduce = function(key, value) {
	return Array.sum(value);
};

db.access.mapReduce(map, reduce, {query: {}, out: "timesVisitPerIP"});

// Number of times any webpage was visited each month
map = function() {
	emit({"year": this.year, "month": this.month}, 1)
};

reduce = function(key, value) {
	return Array.sum(value)
};

db.access.mapReduce(map, reduce, {query: {}, out: "timesVisitPerMonth"});


