open Ancestor.Default

module Styles = {
  open Emotion

  let img = css({
    "borderRadius": "1rem 1rem 0 0",
  })
}

@react.component
let make = (~children) => {
  <Box
    tag=#main
    display=[xs(#flex)]
    flexDirection=[xs(#column)]
    alignSelf=[xs(#center)]
    bgColor=[xs(Theme.Colors.card)]
    maxW=[xs(450->#px)]
    borderRadius=[xs(2)]>
    <img src=Assets.illustrationHero className=Styles.img alt="Illustration Hero" /> {children}
  </Box>
}
