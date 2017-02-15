cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(emacs-ycmd-inc)

set(sources src/main.cpp)

add_executable(${PROJECT_NAME} ${sources})

