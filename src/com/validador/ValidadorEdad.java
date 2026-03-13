package com.validador;

public class ValidadorEdad {

    /**
     * Valida si el usuario es mayor de edad.
     * @param edad Edad a validar.
     * @return true si es mayor o igual a 18, false si es menor de 18.
     * @throws IllegalArgumentException si la edad está fuera del rango [0, 99].
     */
    public boolean isMayorEdad(int edad) {
        if (edad < 0) {
            throw new IllegalArgumentException("La edad no puede ser negativa.");
        } else if (edad >= 0 && edad <= 17) {
            return false;
        } else if (edad >= 18 && edad <= 99) {
            return true;
        } else {
            throw new IllegalArgumentException("Edad fuera de rango.");
        }
    }
}