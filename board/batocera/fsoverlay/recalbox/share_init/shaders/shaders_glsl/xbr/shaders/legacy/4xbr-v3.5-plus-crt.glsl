// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord1;
    vec4 _t1;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1.xy = vec2(0.00000000E+00, -_ps.y);
    _OUT._t1.zw = vec2(-_ps.x, 0.00000000E+00);
    _ret_0._position1 = _r0008;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    gl_Position = _r0008;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    return;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
};
vec4 _ret_0;
vec3 _TMP55;
vec3 _TMP71;
float _TMP70;
float _TMP69;
float _TMP68;
vec4 _TMP54;
vec3 _TMP39;
vec3 _TMP47;
vec3 _TMP51;
vec3 _TMP52;
vec3 _TMP53;
vec3 _TMP48;
vec3 _TMP49;
vec3 _TMP50;
vec3 _TMP40;
vec3 _TMP44;
vec3 _TMP45;
vec3 _TMP46;
vec3 _TMP41;
vec3 _TMP42;
vec3 _TMP43;
vec3 _TMP34;
vec3 _TMP33;
vec3 _TMP32;
vec3 _TMP22;
vec3 _TMP21;
vec3 _TMP62;
vec3 _TMP60;
vec3 _TMP58;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0103;
vec2 _c0107;
vec2 _c0109;
vec2 _c0111;
vec2 _c0113;
vec2 _c0117;
vec2 _c0119;
vec2 _c0121;
vec2 _c0123;
vec2 _c0125;
vec2 _c0127;
vec2 _c0129;
vec2 _c0131;
vec2 _c0133;
vec2 _c0135;
vec2 _c0137;
vec2 _c0139;
vec2 _c0141;
vec2 _c0143;
vec3 _r0183;
vec3 _r0193;
vec3 _r0203;
vec3 _r0215;
vec3 _r0225;
vec3 _r0235;
vec3 _r0247;
vec3 _r0257;
vec3 _r0267;
vec3 _r0279;
vec3 _r0289;
vec3 _r0299;
vec3 _r0311;
vec3 _r0321;
vec3 _r0331;
vec3 _r0343;
vec3 _r0353;
vec3 _r0363;
vec3 _r0375;
vec3 _r0385;
vec3 _r0395;
vec3 _r0407;
vec3 _r0417;
vec3 _r0427;
vec3 _r0599;
vec3 _r0609;
vec3 _r0619;
vec3 _r0663;
vec3 _r0673;
vec3 _r0683;
vec3 _r0759;
vec3 _r0769;
vec3 _r0779;
vec3 _r0791;
vec3 _r0801;
vec3 _r0811;
vec3 _TMP822;
vec3 _a0825;
vec3 _TMP826;
vec3 _a0829;
vec3 _TMP830;
vec3 _a0833;
vec3 _TMP834;
vec3 _a0837;
vec3 _TMP838;
vec3 _a0841;
vec3 _TMP844;
vec3 _a0847;
vec3 _TMP848;
vec3 _a0851;
vec3 _TMP852;
vec3 _a0855;
vec3 _TMP856;
vec3 _a0859;
vec3 _TMP860;
vec3 _a0863;
vec3 _TMP864;
vec3 _a0867;
vec3 _TMP868;
vec3 _a0871;
vec3 _TMP872;
vec3 _a0875;
vec3 _TMP876;
vec3 _a0879;
vec3 _TMP880;
vec3 _a0883;
vec3 _TMP884;
vec3 _a0887;
vec2 _c0927;
vec3 _TMP944;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec3 _edr;
    bvec3 _edr_left;
    bvec3 _edr_up;
    bvec3 _px;
    bvec3 _interp_restriction_lv1;
    bvec3 _interp_restriction_lv2_left;
    bvec3 _interp_restriction_lv2_up;
    vec3 _E11;
    vec3 _E14;
    vec3 _E15;
    vec2 _fp;
    vec2 _st;
    vec2 _g1;
    vec2 _g2;
    vec3 _b2;
    vec3 _c2;
    vec3 _d1;
    vec3 _e1;
    vec3 _f1;
    vec3 _g3;
    vec3 _h1;
    vec3 _i;
    vec3 _i4;
    vec3 _i5;
    vec3 _h5;
    vec3 _f4;
    vec3 _color;
    float _dy;
    float _v_weight_00;
    vec2 _coords10;
    vec3 _colorNB;
    float _v_weight_10;
    _x0103 = TEX0.xy*TextureSize;
    _fp = fract(_x0103);
    _st = vec2(float((_fp.x >= 5.00000000E-01)), float((_fp.y >= 5.00000000E-01)));
    _g1 = TEX1.xy*((_st.x + _st.y) - 1.00000000E+00) + TEX1.zw*(_st.x - _st.y);
    _g2 = TEX1.xy*(_st.y - _st.x) + TEX1.zw*((_st.x + _st.y) - 1.00000000E+00);
    _c0107 = TEX0.xy + _g1 + _g2;
    _TMP0 = COMPAT_TEXTURE(Texture, _c0107);
    _c0109 = TEX0.xy + _g1;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0109);
    _c0111 = (TEX0.xy + _g1) - _g2;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0111);
    _c0113 = TEX0.xy + _g2;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0113);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0117 = TEX0.xy - _g2;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0117);
    _c0119 = (TEX0.xy - _g1) + _g2;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0119);
    _c0121 = TEX0.xy - _g1;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0121);
    _c0123 = (TEX0.xy - _g1) - _g2;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0123);
    _c0125 = (TEX0.xy + 2.00000000E+00*_g1) - _g2;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0125);
    _c0127 = (TEX0.xy - _g1) + 2.00000000E+00*_g2;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0127);
    _c0129 = (TEX0.xy + _g1) - 2.00000000E+00*_g2;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0129);
    _c0131 = TEX0.xy - 2.00000000E+00*_g2;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0131);
    _c0133 = (TEX0.xy - _g1) - 2.00000000E+00*_g2;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0133);
    _c0135 = (TEX0.xy - 2.00000000E+00*_g1) + _g2;
    _TMP14 = COMPAT_TEXTURE(Texture, _c0135);
    _c0137 = TEX0.xy - 2.00000000E+00*_g1;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0137);
    _c0139 = (TEX0.xy - 2.00000000E+00*_g1) - _g2;
    _TMP16 = COMPAT_TEXTURE(Texture, _c0139);
    _c0141 = TEX0.xy + 2.00000000E+00*_g1;
    _TMP17 = COMPAT_TEXTURE(Texture, _c0141);
    _c0143 = TEX0.xy + 2.00000000E+00*_g2;
    _TMP18 = COMPAT_TEXTURE(Texture, _c0143);
    _r0183.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP1.xyz);
    _r0183.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP1.xyz);
    _r0183.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP1.xyz);
    _TMP58 = abs(_r0183);
    _r0193.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP3.xyz);
    _r0193.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP3.xyz);
    _r0193.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP3.xyz);
    _TMP60 = abs(_r0193);
    _r0203.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP5.xyz);
    _r0203.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP5.xyz);
    _r0203.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP5.xyz);
    _TMP62 = abs(_r0203);
    _b2 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0215.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP2.xyz);
    _r0215.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP2.xyz);
    _r0215.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP2.xyz);
    _TMP58 = abs(_r0215);
    _r0225.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP0.xyz);
    _r0225.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP0.xyz);
    _r0225.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP0.xyz);
    _TMP60 = abs(_r0225);
    _r0235.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP8.xyz);
    _r0235.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP8.xyz);
    _r0235.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP8.xyz);
    _TMP62 = abs(_r0235);
    _c2 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0247.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP3.xyz);
    _r0247.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP3.xyz);
    _r0247.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP3.xyz);
    _TMP58 = abs(_r0247);
    _r0257.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP7.xyz);
    _r0257.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP7.xyz);
    _r0257.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP7.xyz);
    _TMP60 = abs(_r0257);
    _r0267.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP1.xyz);
    _r0267.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP1.xyz);
    _r0267.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP1.xyz);
    _TMP62 = abs(_r0267);
    _d1 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0279.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP4.xyz);
    _r0279.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP4.xyz);
    _r0279.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP4.xyz);
    _TMP58 = abs(_r0279);
    _r0289.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP4.xyz);
    _r0289.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP4.xyz);
    _r0289.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP4.xyz);
    _TMP60 = abs(_r0289);
    _r0299.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP4.xyz);
    _r0299.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP4.xyz);
    _r0299.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP4.xyz);
    _TMP62 = abs(_r0299);
    _e1 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0311.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP5.xyz);
    _r0311.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP5.xyz);
    _r0311.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP5.xyz);
    _TMP58 = abs(_r0311);
    _r0321.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP1.xyz);
    _r0321.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP1.xyz);
    _r0321.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP1.xyz);
    _TMP60 = abs(_r0321);
    _r0331.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP7.xyz);
    _r0331.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP7.xyz);
    _r0331.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP7.xyz);
    _TMP62 = abs(_r0331);
    _f1 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0343.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP6.xyz);
    _r0343.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP6.xyz);
    _r0343.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP6.xyz);
    _TMP58 = abs(_r0343);
    _r0353.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP8.xyz);
    _r0353.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP8.xyz);
    _r0353.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP8.xyz);
    _TMP60 = abs(_r0353);
    _r0363.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP0.xyz);
    _r0363.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP0.xyz);
    _r0363.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP0.xyz);
    _TMP62 = abs(_r0363);
    _g3 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0375.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP7.xyz);
    _r0375.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP7.xyz);
    _r0375.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP7.xyz);
    _TMP58 = abs(_r0375);
    _r0385.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP5.xyz);
    _r0385.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP5.xyz);
    _r0385.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP5.xyz);
    _TMP60 = abs(_r0385);
    _r0395.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP3.xyz);
    _r0395.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP3.xyz);
    _r0395.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP3.xyz);
    _TMP62 = abs(_r0395);
    _h1 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0407.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP8.xyz);
    _r0407.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP8.xyz);
    _r0407.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP8.xyz);
    _TMP58 = abs(_r0407);
    _r0417.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP2.xyz);
    _r0417.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP2.xyz);
    _r0417.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP2.xyz);
    _TMP60 = abs(_r0417);
    _r0427.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP6.xyz);
    _r0427.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP6.xyz);
    _r0427.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP6.xyz);
    _TMP62 = abs(_r0427);
    _i = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0599.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP13.xyz);
    _r0599.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP13.xyz);
    _r0599.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP13.xyz);
    _TMP58 = abs(_r0599);
    _r0609.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP9.xyz);
    _r0609.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP9.xyz);
    _r0609.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP9.xyz);
    _TMP60 = abs(_r0609);
    _r0619.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP14.xyz);
    _r0619.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP14.xyz);
    _r0619.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP14.xyz);
    _TMP62 = abs(_r0619);
    _i4 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0663.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP16.xyz);
    _r0663.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP16.xyz);
    _r0663.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP16.xyz);
    _TMP58 = abs(_r0663);
    _r0673.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP11.xyz);
    _r0673.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP11.xyz);
    _r0673.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP11.xyz);
    _TMP60 = abs(_r0673);
    _r0683.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP10.xyz);
    _r0683.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP10.xyz);
    _r0683.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP10.xyz);
    _TMP62 = abs(_r0683);
    _i5 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0759.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP15.xyz);
    _r0759.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP15.xyz);
    _r0759.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP15.xyz);
    _TMP58 = abs(_r0759);
    _r0769.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP12.xyz);
    _r0769.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP12.xyz);
    _r0769.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP12.xyz);
    _TMP60 = abs(_r0769);
    _r0779.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP18.xyz);
    _r0779.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP18.xyz);
    _r0779.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP18.xyz);
    _TMP62 = abs(_r0779);
    _h5 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _r0791.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP12.xyz);
    _r0791.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP12.xyz);
    _r0791.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP12.xyz);
    _TMP58 = abs(_r0791);
    _r0801.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP17.xyz);
    _r0801.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP17.xyz);
    _r0801.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP17.xyz);
    _TMP60 = abs(_r0801);
    _r0811.x = dot(vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00), _TMP15.xyz);
    _r0811.y = dot(vec3( -1.18299997E+00, -2.31699991E+00, 3.49300003E+00), _TMP15.xyz);
    _r0811.z = dot(vec3( 2.99399996E+00, -2.50800014E+00, -4.87800002E-01), _TMP15.xyz);
    _TMP62 = abs(_r0811);
    _f4 = vec3(_TMP58.x, _TMP60.x, _TMP62.x);
    _interp_restriction_lv1 = bvec3(_e1.x != _f1.x && _e1.x != _h1.x, _e1.y != _f1.y && _e1.y != _h1.y, _e1.z != _f1.z && _e1.z != _h1.z);
    _interp_restriction_lv2_left = bvec3(_e1.x != _g3.x && _d1.x != _g3.x, _e1.y != _g3.y && _d1.y != _g3.y, _e1.z != _g3.z && _d1.z != _g3.z);
    _interp_restriction_lv2_up = bvec3(_e1.x != _c2.x && _b2.x != _c2.x, _e1.y != _c2.y && _b2.y != _c2.y, _e1.z != _c2.z && _b2.z != _c2.z);
    _a0825 = _e1 - _c2;
    _TMP822 = abs(_a0825);
    _a0829 = _e1 - _g3;
    _TMP826 = abs(_a0829);
    _a0833 = _i - _h5;
    _TMP830 = abs(_a0833);
    _a0837 = _i - _f4;
    _TMP834 = abs(_a0837);
    _a0841 = _h1 - _f1;
    _TMP838 = abs(_a0841);
    _TMP21 = _TMP822 + _TMP826 + _TMP830 + _TMP834 + 4.00000000E+00*_TMP838;
    _a0847 = _h1 - _d1;
    _TMP844 = abs(_a0847);
    _a0851 = _h1 - _i5;
    _TMP848 = abs(_a0851);
    _a0855 = _f1 - _i4;
    _TMP852 = abs(_a0855);
    _a0859 = _f1 - _b2;
    _TMP856 = abs(_a0859);
    _a0863 = _e1 - _i;
    _TMP860 = abs(_a0863);
    _TMP22 = _TMP844 + _TMP848 + _TMP852 + _TMP856 + 4.00000000E+00*_TMP860;
    _edr = bvec3(_TMP21.x < _TMP22.x && _interp_restriction_lv1.x, _TMP21.y < _TMP22.y && _interp_restriction_lv1.y, _TMP21.z < _TMP22.z && _interp_restriction_lv1.z);
    _a0867 = _f1 - _g3;
    _TMP864 = abs(_a0867);
    _a0871 = _h1 - _c2;
    _TMP868 = abs(_a0871);
    _edr_left = bvec3((2.00000000E+00*_TMP864).x <= _TMP868.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP864).y <= _TMP868.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP864).z <= _TMP868.z && _interp_restriction_lv2_left.z);
    _a0875 = _f1 - _g3;
    _TMP872 = abs(_a0875);
    _a0879 = _h1 - _c2;
    _TMP876 = abs(_a0879);
    _edr_up = bvec3(_TMP872.x >= (2.00000000E+00*_TMP876).x && _interp_restriction_lv2_up.x, _TMP872.y >= (2.00000000E+00*_TMP876).y && _interp_restriction_lv2_up.y, _TMP872.z >= (2.00000000E+00*_TMP876).z && _interp_restriction_lv2_up.z);
    _a0883 = _e1 - _f1;
    _TMP880 = abs(_a0883);
    _a0887 = _e1 - _h1;
    _TMP884 = abs(_a0887);
    _px = bvec3(_TMP880.x <= _TMP884.x, _TMP880.y <= _TMP884.y, _TMP880.z <= _TMP884.z);
    _E15 = _TMP4.xyz;
    _E14 = _TMP4.xyz;
    _E11 = _TMP4.xyz;
    if (_px.x) { 
        _TMP32 = _TMP5.xyz;
    } else {
        _TMP32 = _TMP7.xyz;
    } 
    if (_px.y) { 
        _TMP33 = _TMP1.xyz;
    } else {
        _TMP33 = _TMP5.xyz;
    } 
    if (_px.z) { 
        _TMP34 = _TMP7.xyz;
    } else {
        _TMP34 = _TMP3.xyz;
    } 
    if (_edr.x && _edr_left.x && _edr_up.x) { 
        _E15 = _TMP32;
        _E14 = _TMP32;
        _E11 = _TMP32;
    } else {
        if (_edr.x && _edr_left.x) { 
            _E11 = _TMP4.xyz + 7.50000000E-01*(_TMP32 - _TMP4.xyz);
            _E15 = _TMP32;
            _E14 = _TMP32;
        } else {
            if (_edr.x && _edr_up.x) { 
                _E14 = _TMP4.xyz + 7.50000000E-01*(_TMP32 - _TMP4.xyz);
                _E15 = _TMP32;
                _E11 = _TMP32;
            } else {
                if (_edr.y && _edr_left.y && _edr.z && _edr_up.z) { 
                    _E11 = _TMP4.xyz + 7.50000000E-01*(_TMP33 - _TMP4.xyz);
                    _E14 = _TMP4.xyz + 7.50000000E-01*(_TMP34 - _TMP4.xyz);
                    _E15 = _TMP4.xyz + 2.50000000E-01*(_TMP33 - _TMP4.xyz);
                    _E15 = _E15 + 2.50000000E-01*(_TMP34 - _E15);
                } else {
                    if (_edr.y && _edr_left.y) { 
                        _E11 = _TMP4.xyz + 7.50000000E-01*(_TMP33 - _TMP4.xyz);
                        _E15 = _TMP4.xyz + 2.50000000E-01*(_TMP33 - _TMP4.xyz);
                    } else {
                        if (_edr.z && _edr_up.z) { 
                            _E14 = _TMP4.xyz + 7.50000000E-01*(_TMP34 - _TMP4.xyz);
                            _E15 = _TMP4.xyz + 2.50000000E-01*(_TMP34 - _TMP4.xyz);
                        } else {
                            if (_edr.x) { 
                                _E11 = _TMP4.xyz + 5.00000000E-01*(_TMP32 - _TMP4.xyz);
                                _E14 = _TMP4.xyz + 5.00000000E-01*(_TMP32 - _TMP4.xyz);
                                _E15 = _TMP32;
                            } 
                        } 
                    } 
                } 
            } 
        } 
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.x < 2.50000000E-01) { 
            if (_fp.y < 2.50000000E-01) { 
                _TMP41 = _E15;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP42 = _E11;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP43 = _E14;
                    } else {
                        _TMP43 = _E15;
                    } 
                    _TMP42 = _TMP43;
                } 
                _TMP41 = _TMP42;
            } 
            _TMP40 = _TMP41;
        } else {
            if (_fp.y < 2.50000000E-01) { 
                _TMP44 = _E14;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP45 = _TMP4.xyz;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP46 = _TMP4.xyz;
                    } else {
                        _TMP46 = _E11;
                    } 
                    _TMP45 = _TMP46;
                } 
                _TMP44 = _TMP45;
            } 
            _TMP40 = _TMP44;
        } 
        _TMP39 = _TMP40;
    } else {
        if (_fp.x < 7.50000000E-01) { 
            if (_fp.y < 2.50000000E-01) { 
                _TMP48 = _E11;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP49 = _TMP4.xyz;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP50 = _TMP4.xyz;
                    } else {
                        _TMP50 = _E14;
                    } 
                    _TMP49 = _TMP50;
                } 
                _TMP48 = _TMP49;
            } 
            _TMP47 = _TMP48;
        } else {
            if (_fp.y < 2.50000000E-01) { 
                _TMP51 = _E15;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP52 = _E14;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP53 = _E11;
                    } else {
                        _TMP53 = _E15;
                    } 
                    _TMP52 = _TMP53;
                } 
                _TMP51 = _TMP52;
            } 
            _TMP47 = _TMP51;
        } 
        _TMP39 = _TMP47;
    } 
    _TMP68 = pow(_TMP39.x, 2.40000010E+00);
    _TMP69 = pow(_TMP39.y, 2.40000010E+00);
    _TMP70 = pow(_TMP39.z, 2.40000010E+00);
    _color = vec3(_TMP68, _TMP69, _TMP70);
    _dy = _fp.y - 5.00000000E-01;
    _v_weight_00 = _dy/5.00000000E-01;
    if (_v_weight_00 > 1.00000000E+00) { 
        _v_weight_00 = 1.00000000E+00;
    } 
    _v_weight_00 = 1.00000000E+00 - _v_weight_00*_v_weight_00;
    _v_weight_00 = _v_weight_00*_v_weight_00;
    _color = _color*vec3(_v_weight_00, _v_weight_00, _v_weight_00);
    if (_dy > 0.00000000E+00) { 
        _coords10 = -TEX1.xy;
        _dy = 1.00000000E+00 - _dy;
    } else {
        _coords10 = TEX1.xy;
        _dy = 1.00000000E+00 + _dy;
    } 
    _c0927 = TEX0.xy + _coords10;
    _TMP54 = COMPAT_TEXTURE(Texture, _c0927);
    _TMP68 = pow(_TMP54.x, 2.40000010E+00);
    _TMP69 = pow(_TMP54.y, 2.40000010E+00);
    _TMP70 = pow(_TMP54.z, 2.40000010E+00);
    _colorNB = vec3(_TMP68, _TMP69, _TMP70);
    _v_weight_10 = _dy/5.00000000E-01;
    if (_v_weight_10 > 1.00000000E+00) { 
        _v_weight_10 = 1.00000000E+00;
    } 
    _v_weight_10 = 1.00000000E+00 - _v_weight_10*_v_weight_10;
    _v_weight_10 = _v_weight_10*_v_weight_10;
    _color = _color + _colorNB*vec3(_v_weight_10, _v_weight_10, _v_weight_10);
    _color = _color*vec3( 1.45000005E+00, 1.45000005E+00, 1.45000005E+00);
    _TMP68 = pow(_color.x, 4.54545438E-01);
    _TMP69 = pow(_color.y, 4.54545438E-01);
    _TMP70 = pow(_color.z, 4.54545438E-01);
    _TMP55 = vec3(_TMP68, _TMP69, _TMP70);
    _TMP71 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP55);
    _TMP944 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP71);
    _ret_0 = vec4(_TMP944.x, _TMP944.y, _TMP944.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif