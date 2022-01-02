open Render

module Styles = {
  open Emotion

  let {toString: colorToString} = module(Theme.Colors)

  let button = css({
    "background": Theme.Colors.primary->colorToString,
    "color": Theme.Colors.buttonText->colorToString,
    "padding": "1.8rem",
    "width": "100%",
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "border": "0",
    "borderRadius": "1rem",
    "fontWeight": "bold",
    "boxShadow": "0 1.5rem 3rem rgba(56, 42, 225, 0.35)",
    "transition": "300ms",
    "&:hover": {
      "opacity": "0.8",
    },
  })
}

@react.component
let make = (~children, ~onClick=?) => {
  <button ?onClick className={Styles.button}> {children->s} </button>
}
