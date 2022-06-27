local_load_all_quiet()

test_that("If collate absent, load in alphabetical order", {
  load_all("testCollateAbsent")

  expect_equal(a, 3)

  unload("testCollateAbsent")
})

test_that("Warned about files missing from collate, but they're still loaded", {
  with_options(
    "testthat:::load_code_quiet_override" = FALSE,
    expect_message(load_all("testCollateMissing"), "a.r")
  )

  expect_equal(a, 1)
  expect_equal(b, 2)

  unload("testCollateMissing")
})

test_that("Extra files in collate don't error, but warn", {
  with_options(
    "testthat:::load_code_quiet_override" = FALSE,
    expect_message(load_all("testCollateExtra"), "b.r")
  )

  expect_equal(a, 1)

  unload("testCollateExtra")
})
