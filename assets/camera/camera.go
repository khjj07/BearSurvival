components {
  id: "camera"
  component: "/rendercam/camera.script"
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
  properties {
    id: "orthoScale"
    value: "5.0"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "fixedAspectRatio"
    value: "true"
    type: PROPERTY_TYPE_BOOLEAN
  }
  properties {
    id: "aspectRatio"
    value: "1920.0, 1080.0, 0.0"
    type: PROPERTY_TYPE_VECTOR3
  }
  properties {
    id: "useViewArea"
    value: "true"
    type: PROPERTY_TYPE_BOOLEAN
  }
  properties {
    id: "viewArea"
    value: "1920.0, 1080.0, 0.0"
    type: PROPERTY_TYPE_VECTOR3
  }
  properties {
    id: "fixedArea"
    value: "false"
    type: PROPERTY_TYPE_BOOLEAN
  }
  properties {
    id: "fixedHeight"
    value: "true"
    type: PROPERTY_TYPE_BOOLEAN
  }
}
components {
  id: "camera_movement"
  component: "/assets/camera/camera_movement.script"
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
