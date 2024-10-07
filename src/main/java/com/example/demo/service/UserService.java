package com.example.demo.service;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import org.springframework.stereotype.Service;

import static java.util.regex.Pattern.matches;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void save(User usersignup) {
        userRepository.save(usersignup);
    }

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public Iterable<User> getAllUsers() { return userRepository.findAll(); }

    public User login(String email, String password) {
        User user = userRepository.findByEmail(email);
        if(user != null && matches(password, user.getPassword())) {
            return user;
        }
        else {
            return null;
        }
    }
}
