package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author <a href="mailto:alanho123@gmail.com">Jason Ho</a>
 */
public interface UserRepository extends JpaRepository<User, Long> {
}