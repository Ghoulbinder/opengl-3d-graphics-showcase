#version 440

//texture colour sampler
uniform sampler2D tex;

// In texture coords
layout (location = 0) in vec2 tex_coord;
// Out colour
layout (location = 0) out vec4 out_colour;

void main()
{
	//to do, if needed
	// Set out colour to sampled texture colour

	out_colour = texture(tex, tex_coord);
}