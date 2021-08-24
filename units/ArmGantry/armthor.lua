local unitName = Spring.I18N('units.names.armthor')

return {
	armthor = {
		acceleration = 0.015,
		brakerate = 0.03,
		buildcostenergy = 220000,
		buildcostmetal = 9000,
		buildpic = "ARMTHOR.PNG",
		buildtime = 300000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE CANBEUW",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "58 34 58",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.armthor'),
		explodeas = "explosiont3xl",
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 50000,
		maxslope = 12,
		maxvelocity = 1.8,
		maxwaterdepth = 20,
		movementclass = "HTANK5",
		name = unitName,
		nochasecategory = "VTOL",
		objectname = "Units/ARMTHOR.s3o",
		script = "Units/ARMTHOR.cob",
		seismicsignature = 0,
		selfdestructas = "explosiont3xxl",
		sightdistance = 600,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "armacv_tracks",
		trackwidth = 60,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.6,
		turnrate = 180,
		customparams = {
			lumamult = "0.7",
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.33,
			subfolder = "armgantry",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.01699066162 -0.66435255127 0.0775146484375",
				collisionvolumescales = "31.8865509033 22.2328948975 29.3510131836",
				collisionvolumetype = "Box",
				damage = 25000,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 25,
				hitdensity = 100,
				metal = 9000,
				object = "Units/armthor_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 500,
				description = Spring.I18N('units.heap', { name = unitName }),
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 3500,
				object = "Units/arm2X2D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-lightning",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg3-lightning",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			lightning = {
				areaofeffect = 8,
				avoidfeature = false,
				beamttl = 1,
				burst = 20,
				burstrate = 0.03333,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 3,
				edgeeffectiveness = 0.15,
				energypershot = 350,
				explosiongenerator = "custom:genericshellexplosion-medium-lightning2",
				fallOffRate = 0.5, --new
				firestarter = 50,
				hardStop = false, --new
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 24,
				name = "Heavy Lighting Cannon",
				noselfdamage = true,
				range = 640,
				reloadtime = 2,
				rgbcolor = "0.5 0.5 1",
				soundhit = "lasrfir2",
				soundhitwet = "sizzle",
				soundstart = "lghthvy1",
				soundtrigger = true,
				thickness = 1.5,
				turret = true,
				weapontype = "LightningCannon",
				weaponvelocity = 400,
				customparams = {
					expl_light_color = "0.2 0.5 1",
					expl_light_life_mult = 5.5,
					expl_light_mult = 3.5,
					expl_light_radius_mult = 2.75,
					light_color = "0.2 0.5 1",
					light_mult = "1.4",
					light_radius_mult = 1.1,
				},
				damage = {
					default = 110,
					subs = 10,
				},
			},
			empmissile = {
				areaofeffect = 256,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				cegtag = "cruisemissiletrail-emp",
				collidefriendly = false,
				commandfire = true,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 1,
				energypershot = 5000,
				explosiongenerator = "custom:genericshellexplosion-huge-lightning",
				firestarter = 0,
				flighttime = 4,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 100,
				model = "corshiprocket.s3o",
				name = "Heavy long-range g2g EMP starburst rocket",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 10, --35
				range = 1000,
				reloadtime = 3, --1
				smoketrail = false,
				soundhit = "emgpuls1",
				--soundhitwet = "splslrg",
				soundstart = "mismed1emp1",
				startvelocity = 200,
				stockpile = true,
				stockpiletime = 65,
				texture1 = "trans",
				texture2 = "null",
				texture3 = "null",
				tolerance = 4000,
				trajectoryheight = 0.5,
				turnrate = 20000,
				weaponacceleration = 200,
				--weapontimer = 2,
				weapontype = "MissileLauncher", --"StarburstLauncher",
				weaponvelocity = 500,
				customparams = {
					expl_light_color = "0.5 0.5 1",
					expl_light_life_mult = 3,
					expl_light_mult = 2,
					expl_light_radius_mult = 1.35,
					light_color = "0.7 0.7 1",
					light_mult = 0.8,
					light_radius_mult = 0.8,
				},
				damage = {
					default = 70000,
				},
			},


			emp = {
				areaofeffect = 8,
				avoidfeature = false,
				beamdecay = 0.5,
				beamtime = 0.2,
				beamttl = 1,
				collidefriendly = false,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.01,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-small-blue",
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 8.8,
				name = "Long Range EMP laser",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 8,
				range = 350,
				reloadtime = 0.4,
				rgbcolor = "0.7 0.7 1",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "hackshot",
				soundtrigger = 1,
				targetmoveerror = 0.3,
				thickness = 1.2,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				customparams = {
					expl_light_color = "0.7 0.7 1",
					light_color = "0.7 0.7 1",
				},
				damage = {
					default = 300,
				},
			},



		},
		weapons = {
			[1] = {
				def = "LIGHTNING",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "EMPMISSILE",
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				def = "EMP",
				maindir = "-1 0 1",
                maxangledif = 120,
				onlytargetcategory = "EMPABLE",
			},
			[4] = {
				def = "EMP",
				maindir = "1 0 1",
                maxangledif = 120,
				onlytargetcategory = "EMPABLE",
			},
		},
	},
}
