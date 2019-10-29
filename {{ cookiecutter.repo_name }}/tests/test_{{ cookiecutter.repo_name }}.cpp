#define CATCH_CONFIG_MAIN
#include <catch.hpp>

#include <{{ cookiecutter.repo_name }}/lib.hpp>

TEST_CASE("{{ cookiecutter.project_name }} test") {
  SECTION("Addition") {
    REQUIRE(AddTwo::Add(1, 9) == 10);
    REQUIRE(AddTwo::Add(-9, 9) == 0);
  }
}
