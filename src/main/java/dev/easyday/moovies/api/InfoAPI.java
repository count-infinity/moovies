package dev.easyday.moovies.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dev.easyday.moovies.model.Movie;

@RestController
@RequestMapping("/api")
public class InfoAPI {    

    @GetMapping("/info")    
    ResponseEntity<Object> getInfo() {

        Movie m = new Movie();
        m.name="Star Wars";
        m.description = "Wars in space.";
        m.genre = "Sci-Fi";
        
        return new ResponseEntity<Object>(m, HttpStatus.OK);
    }
}

