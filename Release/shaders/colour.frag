#version 440

uniform vec4 colour;

// Out colour for the shader
layout (location = 0) out vec4 out_colour;

void main()
{
	// Set out colour
	out_colour = colour;
}
