package com.example.lab3;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class FunctionalityTest {

    @Test
    public void test(){
        int x = 2;
        int y = 23;

        assertEquals(25, x+y);


    }

    @Test
    public void test2(){
        int x = 3;
        int y = 23;

        assertEquals(26, x+y);


    }

    @Test
    public void test3(){
        int x = 4;
        int y = 23;

        assertEquals(27, x+y);


    }

}
