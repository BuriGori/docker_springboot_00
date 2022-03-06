package com.example.docker_springboot_00.Repository;

import com.example.docker_springboot_00.Domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
