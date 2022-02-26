varying mediump vec2 var_texcoord0;
uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 bordercolor;
uniform lowp vec4 offset;

void main()
{
	vec4 col = texture2D(DIFFUSE_TEXTURE, var_texcoord0);
	float offset = offset.x; //float offset = 1.0/spriteSize.x;

	if (col.a > 0.1)
	gl_FragColor = col;
	else {
		float a = texture2D(DIFFUSE_TEXTURE, vec2(var_texcoord0.x + offset, var_texcoord0.y)).a ;
		a += texture2D(DIFFUSE_TEXTURE, vec2(var_texcoord0.x, var_texcoord0.y - offset)).a;
		a += texture2D(DIFFUSE_TEXTURE, vec2(var_texcoord0.x - offset, var_texcoord0.y)).a;
		a += texture2D(DIFFUSE_TEXTURE, vec2(var_texcoord0.x, var_texcoord0.y + offset)).a;

		if ( a > 0.9)
		gl_FragColor = bordercolor;
		else
		gl_FragColor = col;
	}
}