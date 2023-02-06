import java.util.ArrayList;
import java.util.List;

public class BeanTest {
    public static void main(String[] args) {

        Album a1 = new Album(1, "Bad Bunny", "Trapeando", 2022, 3.4, "Trap");
        Album a2 = new Album(2, "Taylor Swift", "21", 2022, 1.3, "Pop");

        List<Album> albumList = new ArrayList<>();
        albumList.add(a1);
        albumList.add(a2);

        for (Album album : albumList) {
            System.out.println(album.toString());
        }

        Author author1 = new Author(1, "Brandon", "Sanderson");
        Author author2 = new Author(2, "JRR", "Tolkien");

        List<Author> authorList = new ArrayList<>();
        authorList.add(author1);
        authorList.add(author2);

        for (Author author : authorList) {
            System.out.println(author.toString());
        }

        Quote quote1 = new Quote(1, author1, "The purpose of a storyteller is not to tell you how to think, but to give you questions to think upon.");
        Quote quote2 = new Quote(2, author2, "It is useless to meet revenge with revenge; it will heal nothing.");

        List<Quote> quoteList = new ArrayList<>();
        quoteList.add(quote1);
        quoteList.add(quote2);

        for (Quote quote : quoteList) {
            System.out.println(quote.toString());
        }

    }
}
