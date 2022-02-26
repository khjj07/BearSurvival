components {
  id: "bear"
  component: "/assets/bear/bear.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "sprite"
  type: "rivemodel"
  data: "scene: \"/assets/bear/bear.rivescene\"\n"
  "default_animation: \"front_idle\"\n"
  "material: \"/defold-rive/assets/rivemodel.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  "default_state_machine: \"dummy\"\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
