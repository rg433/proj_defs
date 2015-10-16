effect effects/vehicles/walker/rocket/trail_world
{
	size	217

	emitter "smoketrail"
	{
		duration	1,1
		count		20,20

		line
		{
			duration	1,1.5
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			flipNormal

			start
			{
				position { point 50,0,0 }
				acceleration { box 0,-8,0,0,-25,0 }
				size { point 8 }
				tint { point 0.494118,0.47451,0.411765 }
				fade { line 0.4,0.6 }
				length { point 150,0,0 }
			}

			motion
			{
				size { envelope arch offset 0.25 }
				tint { envelope linear }
				fade { envelope linear count 1.5 offset -0.5 }
				length { envelope linear }
			}

			end
			{
				size { box 8,12 }
				tint { point 0.14902,0.145098,0.12549 }
				length { point 180,0,0 }
			}
		}
	}
	emitter "firetrail"
	{
		duration	1,1
		count		80,80

		sprite
		{
			duration	0.15,0.15
			persist
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { line 13,13,15,15 }
				tint { point 0.686275,0.556863,0.494118 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	spawner "line"
	{
		count		1,1
		locked
		constant

		line
		{
			duration	5,5
			material	"gfx/effects/fire/fireline1"

			start
			{
				position { point -2,0,0 }
				size { point 6 }
				tint { point 0.74902,0.74902,0.74902 }
				length { point -30,0,0 }
			}

			motion
			{
				tint { envelope random }
			}
		}
	}
	emitter "line_inner"
	{
		duration	1,1
		count		15,15
		locked

		line
		{
			duration	0.1,0.1
			material	"gfx/effects/fire/fireline1"

			start
			{
				position { point -2,0,0 }
				size { point 3 }
				length { box -30,0,0,-20,0,0 }
			}
		}
	}
	emitter "side_streaks"
	{
		duration	1,1
		count		40,40
		locked

		line
		{
			duration	0.3,0.3
			blend	add
			material	"gfx/effects/weapons/flash_half"
			generatedOriginNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,-0.1,0.1,0.1 surface }
				size { box 4,5 }
				tint { point 0.490196,0.682353,1 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 4,0,0,8,0,0 }
			}

			motion
			{
				fade { envelope fast_in_slow_out }
				length { envelope linear }
			}

			end
			{
				fade { point 0.75 }
				length { box 35,0,0,40,0,0 }
			}
		}
	}
	spawner "flash"
	{
		count		1,1
		locked
		constant

		sprite
		{
			duration	1,1
			material	"gfx/effects/weapons/flash"

			start
			{
				position { point -4,0,0 }
				size { line 16,16,20,20 }
			}
		}
	}
	emitter "sparks_lines"
	{
		duration	1,1
		count		50,50

		line
		{
			duration	0.2,0.2
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder 0.1,-0.1,-0.1,0.1,0.1,0.1 }
				velocity { box 50,0,0,200,0,0 }
				size { box 0.5,1 }
				tint { line 1,0.984314,0.831373,1,0.701961,0.364706 }
				length { box 2,0,0,4,0,0 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	sound "unnamed7"
	{
		soundShader	"effects_rocket_loop"
		volume	0.7,0.7
	}
	sound "unnamed8"
	{
		soundShader	"player_rocketlauncher_fly"
	}
}


