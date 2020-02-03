package in.bushansirgur.onlinebookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.bushansirgur.onlinebookstore.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long>{

}
