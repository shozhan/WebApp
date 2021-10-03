#!/bin/bash

lsof -P | grep ':9002' | awk '{print $2}' | xargs kill -9 
