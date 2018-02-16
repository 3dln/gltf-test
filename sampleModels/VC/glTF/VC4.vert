precision highp float;
uniform mat4 u_modelViewMatrix;
uniform mat4 u_projectionMatrix;
uniform mat3 u_normalMatrix;
uniform mat4 u_light1Transform;
uniform mat4 u_light2Transform;
attribute vec3 a_position;
varying vec3 v_position;
attribute vec3 a_normal;
varying vec3 v_normal;
varying vec3 v_light1Position;
varying vec3 v_light2Position;
void main(void) {
    vec4 pos = u_modelViewMatrix * vec4(a_position,1.0);
    v_position = pos.xyz;
    gl_Position = u_projectionMatrix * pos;
    v_normal = u_normalMatrix * a_normal;
    v_light1Position = u_light1Transform[3].xyz;
    v_light2Position = u_light2Transform[3].xyz;
}
