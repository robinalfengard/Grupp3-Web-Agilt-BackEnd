package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/all")
    public Iterable<User> getAllUsers() {
        return userService.getAllUsers();
    }

    @GetMapping("/{email}")
    public ResponseEntity<String> getUserByEmail(@PathVariable String email) {
        var user = userService.getUserByEmail(email);
        if(user == null) {
            return ResponseEntity.status(404).body("User not found");
        } else {
            return ResponseEntity.status(200).body(user.toString());
        }
    }
    @PostMapping("/signup")
    public void signup(@RequestBody User usersignup) {
        userService.save(usersignup);
    }
    @PostMapping("/login")
    public ResponseEntity<User> login(@RequestBody User userLogin) {
        User user = userService.login(userLogin.getEmail(), userLogin.getPassword());
        if (user != null) {
            return ResponseEntity.ok(user);
        } else {
            return ResponseEntity.status(401).body(null);
        }
    }

}
