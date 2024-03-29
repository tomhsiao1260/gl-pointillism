attribute vec2 a_position;

uniform vec2 u_resolution;
varying vec2 v_posCoord;
 
void main() {
  vec2 normalized = a_position / u_resolution;
  vec2 clipSpace = 2.0 * normalized - 1.0;

  gl_PointSize = 5.0;
  gl_Position = vec4(clipSpace * vec2(1, -1), 0, 1);

  v_posCoord = normalized;
}