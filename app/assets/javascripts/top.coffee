$ ->

  width = 500
  height = 300

  #Scene
  scene = new THREE.Scene()

  # Mesh
  geometry = new THREE.CubeGeometry(50, 50, 50)
  material = new THREE.MeshBasicMaterial({color: "red"})
  cube = new THREE.Mesh(geometry, material)
  cube.position.set(0,0,0)
  scene.add(cube)

  # helper
  axis = new THREE.AxisHelper(1000)
  axis.position.set(0, 0, 0)
  scene.add(axis)

  # camera
  camera = new THREE.PerspectiveCamera(45, width / height, 1, 1000)
  camera.position.set(200, 100, 500)
  camera.lookAt(cube.position)

  # Rendering
  renderer = new THREE.WebGLRenderer
  renderer.setSize 1000, 500
  renderer.setClearColor("#FAF0E6", 1)
  renderer.render(scene, camera)
  document.getElementById('stage').appendChild renderer.domElement
  return
