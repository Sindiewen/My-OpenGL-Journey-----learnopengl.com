#version 330 core

layout (location = 0) in vec3 aPos; // The position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute posiiton 1

out vec3 vertexColor; // output a color to the fragment shader
out vec3 vertexPosition;

void main()
{
	// x Position, y Position, z Position, Size/scale of triangle
    gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
    vertexColor = aColor; // set ourColor to the input color we got from the vertex data
	vertexPosition = aPos;
}