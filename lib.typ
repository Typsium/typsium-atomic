#import "@preview/cetz:0.3.2"

#let draw_shell(radius, electrons, color: luma(90%)) = {
  import cetz.draw: *

  circle((0,0), radius: radius, fill: none)

  set-style(content: (padding: .2),
      fill: color,
      stroke: black)

  for i in range(electrons) {
    circle((radius*calc.sin(360deg/electrons*i), radius*calc.cos(360deg/electrons*i)), radius: 0.13)
    content((), math.minus)
  }
}

#let draw-core(atomic-number, mass-number, element, radius: 0.6, color: luma(90%)) = {
  import cetz.draw: *
  
  if (element.len() < 2){
    element = element + " "
  }
  set-style(content: (padding: .2),
      fill: color,
      stroke: black)

  circle((0, 0), radius: radius)
  content((),$""_atomic-number^(mass-number)element,)
}

#let draw-atom-shells-canvas(atomic-number, mass-number, element, electrons, shells: 1.0, step: 0.4, center: 0.6, color: luma(90%)) = {
  import cetz.draw: *
  
  let loop = 0
  for i in electrons {
    draw_shell((shells + loop*step), i, color: color)
    loop = loop + 1
  }

  draw-core(atomic-number, mass-number, atom, radius: center, color: color)
}

#let draw-atom-shells(atomic-number, mass-number, element, electrons, shells: 1.0, step: 0.4, center: 0.6, color: luma(90%)) = {
    cetz.canvas({
    import cetz.draw: *
    draw-atom-shells-canvas(atomic-number, mass-number, element, electrons, shells: shells, step: step, center: center, color: color)
  })
}