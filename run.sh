#!/bin/bash

function build_app(){
    ./gradlew clean assemble --rerun-tasks
}

function run_app(){
    APP=$(echo gradle-native-c-example-app/build/install/main/debug/linux/gradle-native-c-example-app)
    $APP
}

 case $1 in
    "build")
      build_app
    ;;
    "run")
      run_app
    ;;
    *)
      echo "You must pass an argument. Argument can be build or run"
    ;;

 esac