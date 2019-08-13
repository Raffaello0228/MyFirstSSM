package main.service;

import main.domain.Book;
import main.mapper.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bookService")
public class BookService {
    @Autowired
    private BookMapper bookMapper;

    public List<Book> getAll(){
        return bookMapper.findAll();
    }
}
