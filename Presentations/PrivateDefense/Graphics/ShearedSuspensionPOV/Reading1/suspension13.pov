#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "glass.inc"

global_settings {
    assumed_gamma 2.2
    max_trace_level 5

    photons {
        count 20000
    }
}

#declare LIGHT_FADING_DIST = 20.0;

background { Gray50 }

light_source {
    < 50,  0, 0> color Gray60
    fade_distance LIGHT_FADING_DIST fade_power 2

    photons {
        reflection off
        refraction on
    }
}

light_source {
    < 40, 20, 20> color Gray60
    fade_distance LIGHT_FADING_DIST fade_power 2

    photons {
        reflection off
        refraction on
    }
}

light_source {
    < 40, -20, 20> color Gray60
    fade_distance LIGHT_FADING_DIST fade_power 2

    photons {
        reflection off
        refraction on
    }
}

light_source {
    < 0, 0, -40> color Gray80
    fade_distance LIGHT_FADING_DIST fade_power 2

    photons {
        reflection off
        refraction on
    }
}

plane {
    y, -30
    pigment { color Gray50 }
    finish { reflection 0.35}
}

//Place the camera
camera {
  orthographic
  sky <0,0,1>
  direction <-1,0,0>   //Don't change this  
  location  <6,2,1.5>  //Change this to move the camera to a different point
  look_at   <0.5,0.5,0.5>    //Change this to aim the camera at a different point
  right <-4/3,0,0>     //Don't change this
  angle 25
}

//Create a box that extends between the 2 specified points

#declare mycube = box {
  <0,0,0>  // one corner position <X1 Y1 Z1>
  <1,1,1>  // other corner position <X2 Y2 Z2>
  
	matrix< 1 , 0, 0,
			  0 , 1, 0,
			  0, -0.04, 1,
			  0 , 0, 0 >

	texture {

		pigment { Gray filter .98 }

		finish {
			phong 1 phong_size 0
			reflection 0.0
		}
	}

	interior {
		ior 1.0
		fade_color Gray
		fade_distance 10
		fade_power 1001
	}		

}

object { 	
	mycube 
}
sphere {
	 	 <0.391340149877,0.489162566883,0.582665288822>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.158365036018,0.539747019045,0.339362815814>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.867996710197,0.231539577197,0.368249152446>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.403326769657,0.822233373915,0.117343650963>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.309524910805,0.0998196526694,0.245094971852>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.823367105043,0.294385371269,0.519514915453>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.516831313265,0.871996398307,0.50076471031>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.642976705629,0.429574201082,0.862079807269>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.159751739045,0.0988941211,0.754964703923>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.124515475705,0.300422415728,0.476040401696>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.150118793625,0.651998474745,0.656315157682>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.44896879902,0.53614504184,0.727019540617>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.633754559011,0.269835622027,0.732980565154>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.599269495104,0.52655807726,0.413013621908>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.205740053904,0.34065383162,0.213234071709>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.906180848374,0.351836365655,0.499530913713>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.550954582425,0.152918488221,0.694643910836>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.269547680916,0.491698704784,0.164763066597>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.756566782548,0.219078783027,0.537350567838>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.555988906139,0.080443729007,0.551969406827>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.589418954074,0.540959283687,0.472770268856>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.228037071046,0.113891092238,0.842626809217>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.448984316453,0.193584650734,0.189457578352>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.111537697177,0.158017145766,0.818605138317>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.574951766947,0.140795554372,0.661248220078>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.316469260147,0.641039449553,0.847932132263>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.757068755276,0.315568060562,0.717900200249>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.702359265821,0.0953328556341,0.190738374979>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.145016118237,0.611610884608,0.796848503028>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.260887452666,0.187511468795,0.261622745841>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.731585473112,0.507400558512,0.400484456411>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.514110850249,0.639219526179,0.875795313475>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.731250358132,0.475440625279,0.619261675369>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.131203815355,0.620984369285,0.436631403601>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.870257776271,0.422792206804,0.223344903908>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.335082231302,0.140897277781,0.627171965615>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.837372074807,0.6757547847,0.709126628068>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.133809048008,0.119134125117,0.654187221217>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.645345769373,0.510216633004,0.575586644385>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.480414071665,0.533994015346,0.327043429624>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.538576698475,0.345659161242,0.852301595601>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.811363531542,0.87858370715,0.233543049664>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.553672973433,0.670813285132,0.420491140853>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.607359584411,0.0645294125018,0.657853948107>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.651188598023,0.861366284484,0.798528799072>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.132448430294,0.819028821471,0.575503155788>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.796156925944,0.532903638154,0.500947317411>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.825923198268,0.745454137035,0.128484045926>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.612597105251,0.544870517542,0.417563356802>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.165347321483,0.551227198135,0.679746517266>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.298504328958,0.571954954096,0.522140531736>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.529599842186,0.583327260307,0.252150042234>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.772623575404,0.172819823524,0.267935586762>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.857680614974,0.616504569781,0.430477014756>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.363989340635,0.871360477477,0.385936410687>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.230066683152,0.21225774808,0.880452965601>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.479733301692,0.382446958973,0.179498590929>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.647658133199,0.628795758916,0.526987833>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.457335728457,0.656460064461,0.716779300034>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
sphere {
	 	 <0.391045439849,0.303014579165,0.604436499482>,0.05 texture {pigment { color Black } finish { phong 0.8 }} 
	 } 
 
