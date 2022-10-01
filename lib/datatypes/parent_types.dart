/// Determines which types of nodes the plugin supports
enum ParentType {
  scene, // set parent as scene
  camera, // set parent as camera
  node, // set parent as a node, must provide parent
}
