package com.candy.kufarAnalog.repository;

import com.candy.kufarAnalog.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
