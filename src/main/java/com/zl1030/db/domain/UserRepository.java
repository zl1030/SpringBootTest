package com.zl1030.db.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


/**
 * @author zl1030
 * @version 1.0.0
 * @date 16/3/23 下午2:34.
 * @blog http://blog.zl1030.com
 */
public interface UserRepository extends JpaRepository<User, Long> {

    User findByName(String name);

    User findByNameAndAge(String name, Integer age);

    @Query("from User u where u.name=:name")
    User findUser(@Param("name") String name);

    @Query("from User u where u.age>=:age")
    List<User> findUser(@Param("age") int age);
}
