#!/bin/bash

val="0"
val=$(ping -c1 8.8.8.8 | grep -Eo '[01] received' | cut -c1); 
echo $val 
