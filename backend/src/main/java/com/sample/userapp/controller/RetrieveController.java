package com.sample.userapp.controller;

import com.sample.userapp.model.User;
import com.sample.userapp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class RetrieveController {

    @Autowired
    private UserRepository repo;

    @GetMapping("/Retrieve")
    public List<User> retrieveAll() {
        return repo.findAll();
    }
}
