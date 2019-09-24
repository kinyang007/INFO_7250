package Model;

import java.util.*;

public class Movie {
    private int movieId;
    private String title;
    private List<String> genres;

    public Movie() {
        genres = new ArrayList<String>();
    }

    public Movie(int movieId, String title, List<String> genres) {
        this.movieId = movieId;
        this.title = title;
        this.genres = genres;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<String> getGenres() {
        return genres;
    }

    public void setGenres(List<String> genres) {
        this.genres = genres;
    }
}
