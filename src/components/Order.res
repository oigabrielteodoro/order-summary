open Render
open Ancestor.Default

module Styles = {
  open Emotion

  let {toString: colorToString} = module(Theme.Colors)

  let container = css({
    "margin": "2.5rem 0",
  })

  let title = css({
    "fontSize": "1.8rem",
    "color": Theme.Colors.title->colorToString,
  })

  let price = css({
    "fontSize": "1.6rem",
    "fontWeight": "700",
    "color": Theme.Colors.paragraphy->colorToString,
  })

  let changeButton = css({
    "background": "transparent",
    "border": "0",
    "color": Theme.Colors.primary->colorToString,
    "fontWeight": "600",
    "fontSize": "1.4rem",
    "marginLeft": "auto",
    "transition": "300ms",
    "&:hover": {
      "opacity": "0.8",
    },
  })
}

@react.component
let make = (~title, ~price) => {
  <Box
    bgColor=[xs(Theme.Colors.secondary)]
    borderRadius=[xs(2)]
    p=[xs(3)]
    display=[xs(#flex)]
    alignItems=[xs(#center)]
    className=Styles.container>
    <img src=Assets.iconMusic alt="Icon Music" />
    <Box ml=[xs(2)]>
      <strong className=Styles.title> {title->s} </strong>
      <p className=Styles.price> {`$${price->i}/year`->s} </p>
    </Box>
    <button className=Styles.changeButton> {"Change"->s} </button>
  </Box>
}
