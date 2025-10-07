# OpenGL 3D Graphics Showcase

A comprehensive 3D graphics project demonstrating fundamental computer graphics concepts including textures, lighting, particle systems, shadows, and post-processing effects using OpenGL.

## 🎨 About The Project

This project renders a 3D environment showcasing core graphical programming concepts through OpenGL. The scene features multiple objects (both static and animated) on a plane, demonstrating the relationship between textures and meshes with responsive lighting effects and realistic shadow casting.

**Course**: Computer Graphics (SET08116)  
**Student ID**: 40441375  
**Institution**: Edinburgh Napier University

## 🎥 Demo Video

[Watch the demonstration video on YouTube](https://youtu.be/Kx8-je8Ok6c)

## ✨ Key Features

### 1. **Texture Mapping**
- Surface textures applied to 3D objects
- Texture loading and GPU uploading pipeline
- Color variations using vec4 for object differentiation
- Texture ID generation and binding

### 2. **Advanced Lighting System**
- Spot light implementation
- Lighting properties:
  - **Emissive** - Self-illumination
  - **Diffuse** - Surface light scattering
  - **Specular** - Reflective highlights
  - **Shininess** - Surface glossiness control
- Real-time light calculations

### 3. **Particle Fire Effect**
- Custom particle system implementation
- Large-scale particle generation
- Animated flame simulation
- Dynamic particle behavior
- Realistic fire visualization

### 4. **Shadow Rendering**
- Shadow casting system
- Light source position calculations
- Object-based shadow projection
- Real-time shadow updates

### 5. **Post-Processing Effects**

**Grain Effect**
- Animated grain overlay
- Fade in/out transitions
- Time-based animation
- Screen-space effect

**Greyscale & Contrast**
- Post-processing color manipulation
- Greyscale conversion
- Contrast enhancement
- Brightness adjustment
- Color restoration transitions

## 🛠️ Technical Implementation

### Graphics Pipeline
```
Model Loading → Texture Application → Lighting Calculation → 
Shadow Mapping → Particle Rendering → Post-Processing → 
Final Render
```

### Technologies Used
- **OpenGL** - Core graphics API
- **C++** - Primary programming language
- **GLSL** - Shader programming language
- **Particle Systems** - Custom fire effect implementation
- **Shadow Mapping** - Depth-based shadow rendering
- **Post-Processing** - Screen-space effects

## 📁 Project Structure

```
opengl-3d-graphics-showcase/
├── src/
│   ├── main.cpp                    # Main application loop
│   ├── renderer.cpp                # Core rendering logic
│   ├── texture_loader.cpp          # Texture management
│   ├── lighting.cpp                # Lighting calculations
│   ├── particle_system.cpp         # Fire particle effect
│   ├── shadow_mapping.cpp          # Shadow rendering
│   └── post_processing.cpp         # Screen effects
├── shaders/
│   ├── vertex_shader.glsl          # Vertex transformations
│   ├── fragment_shader.glsl        # Pixel coloring
│   ├── shadow_vertex.glsl          # Shadow pass vertex
│   ├── shadow_fragment.glsl        # Shadow pass fragment
│   ├── particle_vertex.glsl        # Particle rendering
│   ├── grain_effect.glsl           # Grain post-processing
│   └── greyscale_contrast.glsl     # Color effects
├── textures/
│   └── [texture files]             # Surface textures
├── assets/
│   └── models/                     # 3D object models
├── docs/
│   └── coursework_report.pdf       # Technical documentation
└── README.md                       # This file
```

## 🚀 Getting Started

### Prerequisites
- OpenGL 3.3 or higher
- C++ compiler (GCC, Clang, MSVC)
- CMake 3.10+
- Graphics drivers with OpenGL support

### Required Libraries
```
- GLFW (Window management)
- GLAD (OpenGL function loading)
- GLM (Mathematics library)
- stb_image (Texture loading)
```

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/cloudsaber/opengl-3d-graphics-showcase.git
cd opengl-3d-graphics-showcase
```

2. **Install dependencies**
```bash
# Ubuntu/Debian
sudo apt-get install libglfw3-dev libglm-dev

# macOS (using Homebrew)
brew install glfw glm

# Windows - use vcpkg
vcpkg install glfw3 glm
```

3. **Build the project**
```bash
mkdir build
cd build
cmake ..
make
```

4. **Run the application**
```bash
./graphics_showcase
```

## 🎮 Controls

- **W/A/S/D** - Camera movement
- **Mouse** - Camera rotation
- **Space** - Toggle effects
- **1** - Toggle grain effect
- **2** - Toggle greyscale/contrast
- **3** - Toggle shadows
- **4** - Toggle fire effect
- **ESC** - Exit application

## 💡 Implementation Highlights

### Texture System
```cpp
// Texture loading pipeline
1. Load texture image from file
2. Generate OpenGL texture ID
3. Bind texture to GPU
4. Set texture parameters (filtering, wrapping)
5. Upload texture data to GPU memory
6. Apply texture to mesh geometry
```

### Lighting Model
Implements Phong lighting model:
- **Ambient**: Base illumination
- **Diffuse**: Angle-dependent surface lighting
- **Specular**: View-dependent highlights

### Particle Fire System
```cpp
// Particle generation for fire effect
- Spawn particles at fire origin
- Apply upward velocity with randomization
- Add horizontal spread for realistic movement
- Fade particles over lifetime
- Use additive blending for glow effect
- Recycle particles for efficiency
```

### Shadow Mapping Pipeline
```cpp
1. Render scene from light's perspective to depth buffer
2. Store depth information in shadow map texture
3. Render scene from camera's perspective
4. For each pixel, check if in shadow by comparing depths
5. Apply shadow factor to lighting calculations
```

### Post-Processing Effects
```cpp
// Grain effect with time-based animation
float grain = random(uv + time) * intensity;
float fadeAmount = sin(time * frequency) * 0.5 + 0.5;
color += grain * fadeAmount;

// Greyscale conversion
float grey = dot(color.rgb, vec3(0.299, 0.587, 0.114));
color = vec4(vec3(grey), 1.0);

// Contrast adjustment
color = (color - 0.5) * contrast + 0.5;
```

## 📊 Technical Achievements

- **Real-time rendering** at 60+ FPS
- **Dynamic lighting** with multiple material properties
- **Particle system** with 1000+ active particles
- **Shadow mapping** with depth buffer optimization
- **Post-processing pipeline** with multiple shader passes
- **Modular architecture** for easy feature extension

## 🎓 Learning Outcomes

This project demonstrates understanding of:

- **3D Graphics Pipeline**: Vertex processing, rasterization, fragment shading
- **Shader Programming**: GLSL vertex and fragment shaders
- **Texture Mapping**: UV coordinates, texture filtering, mipmapping
- **Lighting Models**: Phong shading, material properties
- **Shadow Techniques**: Shadow mapping, depth buffers
- **Particle Systems**: Procedural animation, GPU instancing
- **Post-Processing**: Screen-space effects, framebuffer operations
- **Performance Optimization**: Efficient rendering techniques

## 🔧 Challenges & Solutions

### Challenge 1: Shadow Rendering
**Problem**: Calculating accurate shadows from light source to objects  
**Solution**: Implemented shadow mapping technique using depth buffer from light's perspective

### Challenge 2: Grain Effect Timing
**Problem**: Achieving smooth fade in/out animation  
**Solution**: Used time-based sine wave function for smooth transitions

### Challenge 3: Texture Management
**Problem**: Multiple texture errors during implementation  
**Solution**: Simplified approach using color variations (vec4) alongside textures

### Challenge 4: Skybox Integration
**Problem**: Visible seams and poor blending with scene  
**Solution**: Removed for cleaner presentation (planned for future enhancement)

## 🔮 Future Enhancements

- **Seamless Skybox**: Implement environment mapping with proper edge blending
- **Multiple Textures**: Add diverse surface materials to objects
- **Additional Lights**: Point lights and directional lights
- **Plane Shadows**: Cast shadows from objects onto the ground plane
- **Blur Effect**: Post-processing blur for depth-of-field
- **Normal Mapping**: Enhanced surface detail without additional geometry
- **Ambient Occlusion**: Soft shadows in crevices and corners
- **HDR Rendering**: High dynamic range for better lighting
- **Reflection Mapping**: Mirror-like surfaces and reflections

## 📸 Screenshots

### Scene Overview
![Top-down view of the 3D scene showing objects with lighting and shadows]

### Fire Particle Effect
![Close-up of the particle-based fire effect with flame animation]

### Greyscale Post-Processing
![Scene rendered with greyscale filter demonstrating color removal]

### Shadow Casting
![Objects casting shadows demonstrating shadow mapping technique]

*[Add your actual screenshots here]*

## 📚 References & Resources

**Learning Resources**:
- [LearnOpenGL](https://learnopengl.com/) - Comprehensive OpenGL tutorials
- [OpenGL Documentation](https://www.opengl.org/documentation/)
- [Khronos OpenGL Wiki](https://www.khronos.org/opengl/wiki/)

**Technical Support**:
- [Stack Overflow](https://stackoverflow.com/) - Programming problem solving
- YouTube tutorials on OpenGL and shader programming

**Theory & Concepts**:
- Real-Time Rendering (Akenine-Möller, Haines, Hoffman)
- OpenGL SuperBible (Wright, Haemel, Sellers, Lipchak)

## 👤 Author

**Romeo Mcdonald**
- GitHub: [@Ghoulbinder](https://github.com/Ghoulbinder)
- Institution: Edinburgh Napier University
- Course: Computer Graphics (SET08116)

## 📄 License

This project was created as part of university coursework. Please contact for usage permissions.

## 🙏 Acknowledgments

- Edinburgh Napier University Computer Graphics course materials
- OpenGL community and documentation
- LearnOpenGL tutorials by Joey de Vries
- Course instructors and teaching staff
- Fellow students for feedback and testing

---

⭐ This project demonstrates fundamental computer graphics programming skills including 3D rendering, shader programming, lighting, particle systems, and post-processing effects.

## 🔗 Related Projects

- Dynamic Difficulty Adjustment Game
- Survival of the Bulge
- Procedural Crafting System Generator
- Database Systems Coursework

---

*Completed February-May 2023 as part of Computer Graphics coursework at Edinburgh Napier University.*
