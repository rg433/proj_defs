effect effects/mp/waveline_30
{
	size	42

	emitter "wave"
	{
		duration	1,1
		count		3,3

		line
		{
			duration	0.6,0.6
			blend	add
			material	"gfx/effects/particles_shapes/waveline1"

			start
			{
				position { cylinder 0,-2,-2,0,2,2 }
				size { box 2,8 }
				fade { point 0 }
				length { point 32,0,0 }
			}

			motion
			{
				fade { envelope "cosine" }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
	emitter "wave2"
	{
		duration	1,1
		count		3,3

		line
		{
			duration	0.6,0.6
			blend	add
			material	"gfx/effects/particles_shapes/waveline1b"

			start
			{
				position { cylinder 0,-2,-2,0,2,2 }
				size { box 2,8 }
				fade { point 0 }
				length { point 32,0,0 }
			}

			motion
			{
				fade { envelope "cosine" }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
	emitter "solid"
	{
		duration	1,1
		count		5,5

		line
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/particles_shapes/add_line"

			start
			{
				fade { point 0 }
				length { point 32,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" }
			}

			end
			{
				size { point 8 }
				fade { point 0.75 }
			}
		}
	}
	emitter "end1"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	0.6,0.6
			blend	add
			material	"gfx/effects/energy_sparks/energy1_red"

			start
			{
				velocity { point 20,0,0 }
				size { point 10,10 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 5,5 }
				fade { point 1 }
				rotate { box -0.333333,0.333333 relative }
			}
		}
	}
	emitter "end2"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	0.6,0.6
			blend	add
			material	"gfx/effects/energy_sparks/energy1_red"

			start
			{
				position { point 32,0,0 }
				velocity { point -20,0,0 }
				size { point 10,10 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 5,5 }
				fade { point 1 }
				rotate { box -0.333333,0.333333 relative }
			}
		}
	}
	sound "sound2"
	{
		soundShader	"ambient_light_pulse04"
		volume	0.2,0.2
	}
}


