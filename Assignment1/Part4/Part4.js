// Number of Movies released per year (Movies Collection)
map = function() {
    emit(this.Year, 1);
};

reduce = function(key, value) {
    return Array.sum(value);
};

db.movies.mapReduce(map, reduce, {query: {}, out: "moviesReleasedPerYear"});

// Number of Movies per genre (Movies Collection)
map = function() {
    for (var i = 0; i < this.Genres.length; i++) {
        emit(this.Genres[i], 1);
    }
};

reduce = function(key, value) {
    return Array.sum(value);
};

db.movies.mapReduce(map, reduce, {query: {}, out: "moviesPerGenre"});

// Number of Movies per rating (Ratings Collection)
map = function() {
    emit(this.Rating, 1);
};

reduce = function(key, value) {
    return Array.sum(value);
};

db.ratings.mapReduce(map, reduce, {query: {}, out: "moviesPerRating"});
// Number of times each movie was tagged (Tags Collection)
map = function() {
    emit(this.MovieID, 1);
};

reduce = function(key, value) {
    return Array.sum(value);
};

db.tags.mapReduce(map, reduce, {query: {}, out: "TagsPerMovie"});