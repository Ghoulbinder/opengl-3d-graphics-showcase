#version 440

// Vertex position
// MVP matrix
uniform mat4 MVP;

layout(location = 0) in vec3 position;
layout(location = 1) in vec4 in_colour;
layout(location = 0) out vec4 vertex_colour;

void main() {
  // screen pos of vertex
  gl_Position = MVP * vec4(position, 1.0);

  // set colour to frag shader
  vertex_colour = in_colour;
}
