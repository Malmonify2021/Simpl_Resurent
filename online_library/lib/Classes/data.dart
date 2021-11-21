enum Language {
  arabic,
  english,
}

class Book {
  final String title, writer, price, image, description;
  final int pages;
  final double rating;
  final List<String> catagories;
  final Language language;

  const Book(this.title, this.writer, this.catagories, this.language,
      this.price, this.image, this.rating, this.pages, this.description);
}
