#!/bin/bash
multiply(){
    result=$(( $1 * $2 ))
    echo $result
}
output=$(multiply 20 100)
echo "Multiplication result: $output"