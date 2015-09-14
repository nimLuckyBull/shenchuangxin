template declareVar(name: expr): stmt =
  const name {.inject.} = 45

# Doesn't compile:
unknownIdentifier.declareVar