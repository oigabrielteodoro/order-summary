module Colors = {
  let primary = #hex("#382ae1")
  let title = #hex("#253055")
  let paragraphy = #hex("#777c92")
  let card = #hex("#ffffff")
  let shape = #hex("#e0e8ff")
  let buttonText = #hex("#ffffff")

  let toString = color =>
    switch color {
    | #hex(color) => color
    }
}

module Typography = {
  let fontFamily = "'Red Hat Display', sans-serif"
}
