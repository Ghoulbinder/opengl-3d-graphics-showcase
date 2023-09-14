#version 440

// MVP matrix
uniform mat4 MVP;

// In value for vec3 position
layout (location = 0) in vec3 position;

//vertex shader function
void main()
{
	// Calculate screen position of vertex
	gl_Position = MVP * vec4(position, 1.0);
}