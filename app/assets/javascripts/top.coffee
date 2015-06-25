$ ->

  width = 500
  height = 300

  #Scene
  scene = new THREE.Scene()

  # 画像設定
  texture = THREE.ImageUtils.loadTexture("3d.png")

  # Mesh
  geometry = new THREE.SphereGeometry(100)
  # material = new THREE.MeshBasicMaterial({color: "red"})
  material = new THREE.MeshBasicMaterial({ map: texture })
  material.side = THREE.DoubleSide


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
  document.getElementById('stage').appendChild renderer.domElement

  render =  () =>
    requestAnimationFrame(render)
    # cube.rotation.x += 1 * Math.PI / 180
    # cube.rotation.y += 1 * Math.PI / 180
    # cube.rotation.z += 1 * Math.PI / 180
    # cube.position.x = Math.sin(new Date().getTime() / 200) * 100
    # cube.position.z = Math.cos(new Date().getTime() / 200) * 100
    renderer.render(scene, camera)

  render()
  # control
  control = new THREE.OrbitControls(camera, renderer.domElement)
  return
