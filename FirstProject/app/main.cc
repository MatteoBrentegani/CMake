#include <iostream>

#include <cxxopts.hpp>
#include <nlohmann/json.hpp>
#include <fmt/format.h>
#include <spdlog/spdlog.h>

#include "my_lib.h"
#include "config.hpp"

int main() 
{
    std::cout << project_name << "\n";
    std::cout << project_version << "\n";
    
    int x[2];
    x[2]=1337;

    std::cout << "JSON Lib version:" 
        << NLOHMANN_JSON_VERSION_MAJOR << "."
        << NLOHMANN_JSON_VERSION_MINOR << "."
        << NLOHMANN_JSON_VERSION_PATCH << "\n";
    std::cout << "FMT Lib version:" 
        << FMT_VERSION << "\n";    
    std::cout << "SPDLOG Lib version:" 
        << SPDLOG_VER_MAJOR << "."
        << SPDLOG_VER_MINOR << "."
        << SPDLOG_VER_PATCH << "\n";    
    std::cout << "CXXOPTS Lib version:" 
        << CXXOPTS__VERSION_MAJOR << "."
        << CXXOPTS__VERSION_MINOR << "."
        << CXXOPTS__VERSION_PATCH << "\n";
    print_hello_world();

    return 0;
}