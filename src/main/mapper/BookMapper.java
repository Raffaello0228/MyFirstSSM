package main.mapper;

import main.domain.Book;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface BookMapper {
    @Select("select * from tb_book")
    List<Book> findAll();
}

