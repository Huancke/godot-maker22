
shader_type canvas_item;
uniform vec2 light_dir = vec2(-0.3, 0.5);
uniform float shadow_alpha = 0.4;         
uniform float shadow_length = 50.0;       
uniform float ground_angle = 30.0;        

void fragment() {
    vec4 tex = texture(TEXTURE, UV);
    if(tex.a > 0.5) {
        COLOR = vec4(0.0, 0.0, 0.0, shadow_alpha);
        float edge = smoothstep(0.5, 0.7, tex.a);
        COLOR.a *= edge;
    } else {
        COLOR = vec4(0.0);
    }
}
void vertex() {
    float angle_rad = radians(ground_angle);
    mat2 rotation = mat2(
        cos(angle_rad), -sin(angle_rad),
        sin(angle_rad),  cos(angle_rad)
    );
    vec2 shadow_offset = rotation * light_dir * shadow_length;
    VERTEX += vec3(shadow_offset, 0.0);
}