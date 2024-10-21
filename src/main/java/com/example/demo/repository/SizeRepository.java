package com.example.demo.repository;
import com.example.demo.entity.Size;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SizeRepository extends CrudRepository<Size, Long> {

    @Query("SELECT s FROM Size s WHERE s.name IN ('S', 'M', 'L', 'XL')")
    List<Size> getDefaultSizes();

}
