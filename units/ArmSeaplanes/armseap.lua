local unitName = Spring.I18N('units.names.armseap')

return {
	armseap = {
		acceleration = 0.2,
		blocking = false,
		brakerate = 0.375,
		buildcostenergy = 6500,
		buildcostmetal = 290,
		buildpic = "ARMSEAP.PNG",
		buildtime = 14825,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB VTOL NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 100,
		description = Spring.I18N('units.descriptions.armseap'),
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1240,
		maxslope = 10,
		maxvelocity = 9.04,
		maxwaterdepth = 255,
		name = unitName,
		nochasecategory = "VTOL",
		objectname = "Units/ARMSEAP.s3o",
		script = "Units/ARMSEAP.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 535,
		sonardistance = 535,
		turnrate = 720,
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armseaplanes",
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-small",
				[2] = "crashing-small",
				[3] = "crashing-small2",
				[4] = "crashing-small3",
				[5] = "crashing-small3",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg2",
				[2] = "airdeathceg3",
				[3] = "airdeathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel1",
			},
		},
		weapondefs = {
			armseap_weapon1 = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				cegtag = "torpedotrail-tiny",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.25,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				flighttime = 3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cortorpedo.s3o",
				name = "Homing torpedo launcher",
				noselfdamage = true,
				range = 660,
				reloadtime = 1.3,
				soundhit = "xplodep2",
				soundhitwet = "splsmed",
				soundstart = "bombrel",
				soundhitvolume = 3,
				soundhitwetvolume = 12,
				startvelocity = 100,
				tolerance = 12000,
				tracks = true,
				turnrate = 7000,
				turret = false,
				waterweapon = true,
				weaponacceleration = 25,
				weapontimer = 5,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 175,
				damage = {
					bombers = 15,
					commanders = 67,
					default = 155,
					fighters = 15,
					vtol = 15,
				},
				customparams = {
					speceffect = "torpwaterpen",
					when = "ypos<0",
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTSHIP",
				def = "ARMSEAP_WEAPON1",
				onlytargetcategory = "NOTHOVER",
			},
		},
	},
}
