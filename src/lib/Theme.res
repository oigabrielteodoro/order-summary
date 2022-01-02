module Colors = {
  let primary = #hex("#382ae1")
  let title = #hex("#28325c")
  let paragraphy = #hex("#8c90a9")
  let card = #hex("#ffffff")
  let shape = #hex("#e0e8ff")
  let buttonText = #hex("#ffffff")
  let secondary = #hex("#f8f9fe")

  let toString = color =>
    switch color {
    | #hex(color) => color
    }
}

module Typography = {
  let fontFamily = "'Red Hat Display', sans-serif"
}
