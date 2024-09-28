package com.automation.runner;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

public class TestRunner {

//    Karate Runner
    @Karate.Test
    Karate testSuite(){
        return Karate.run("classpath:features")
                .outputCucumberJson(true)
                .reportDir("Cucumber-Karate");
    }

//    //Junit Runner
//    @Test
//    public void runSuite(){
//        Karate.run("classpath:features").relativeTo(getClass());
//    }
}
