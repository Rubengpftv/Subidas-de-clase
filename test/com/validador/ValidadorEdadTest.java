package com.validador;

import org.junit.Test;
import static org.junit.Assert.*;

public class ValidadorEdadTest {
    
    private final ValidadorEdad validador = new ValidadorEdad();

    @Test(expected = IllegalArgumentException.class)
    public void testNegativo1() { validador.isMayorEdad(-99); }
    
    @Test(expected = IllegalArgumentException.class)
    public void testNegativo2() { validador.isMayorEdad(-1); }

    @Test
    public void testMenor1() { assertFalse(validador.isMayorEdad(0)); }
    
    @Test
    public void testMenor2() { assertFalse(validador.isMayorEdad(17)); }

    @Test
    public void testMayor1() { assertTrue(validador.isMayorEdad(18)); }
    
    @Test
    public void testMayor2() { assertTrue(validador.isMayorEdad(99)); }
}