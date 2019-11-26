package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		Assets.defaultRootPath = rootPath;

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR0y48:assets%2Fimages%2FAestroids%2Faestroid_brown.pngR2i43127R3y5:IMAGER5R7R6tgoR0y47:assets%2Fimages%2FAestroids%2Faestroid_dark.pngR2i30847R3R8R5R9R6tgoR0y48:assets%2Fimages%2FAestroids%2Faestroid_gay_2.pngR2i36595R3R8R5R10R6tgoR0y47:assets%2Fimages%2FAestroids%2Faestroid_grey.pngR2i33314R3R8R5R11R6tgoR0y45:assets%2Fimages%2FBackground%2Fbackground.jpgR2i30450R3R8R5R12R6tgoR0y42:assets%2Fimages%2FBlue%2Falienship_new.pngR2i59915R3R8R5R13R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F1.pngR2i74071R3R8R5R14R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F2.pngR2i73394R3R8R5R15R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F3.pngR2i72356R3R8R5R16R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F4.pngR2i73755R3R8R5R17R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F5.pngR2i71662R3R8R5R18R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F6.pngR2i69797R3R8R5R19R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F7.pngR2i70942R3R8R5R20R6tgoR0y42:assets%2Fimages%2FBlue%2FAnimation%2F8.pngR2i74868R3R8R5R21R6tgoR0y35:assets%2Fimages%2FBlue%2Fbullet.pngR2i5665R3R8R5R22R6tgoR0y51:assets%2Fimages%2FBlue%2FCommunicationship_blue.pngR2i93651R3R8R5R23R6tgoR0y61:assets%2Fimages%2FBlue%2Fcommunication_ship_animation%2F1.pngR2i93651R3R8R5R24R6tgoR0y61:assets%2Fimages%2FBlue%2Fcommunication_ship_animation%2F2.pngR2i97209R3R8R5R25R6tgoR0y61:assets%2Fimages%2FBlue%2Fcommunication_ship_animation%2F3.pngR2i89477R3R8R5R26R6tgoR0y44:assets%2Fimages%2FBlue%2Fmothership_blue.pngR2i205568R3R8R5R27R6tgoR0y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F1.pngR2i52696R3R8R5R28R6tgoR0y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F2.pngR2i53007R3R8R5R29R6tgoR0y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F3.pngR2i52847R3R8R5R30R6tgoR0y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F4.pngR2i53541R3R8R5R31R6tgoR0y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F5.pngR2i54536R3R8R5R32R6tgoR0y43:assets%2Fimages%2FBlue%2FSpacebombs%2F1.pngR2i20149R3R8R5R33R6tgoR0y43:assets%2Fimages%2FBlue%2FSpacebombs%2F2.pngR2i20842R3R8R5R34R6tgoR0y43:assets%2Fimages%2FBlue%2FSpacebombs%2F3.pngR2i20423R3R8R5R35R6tgoR0y43:assets%2Fimages%2FBlue%2FSpacemines%2F1.pngR2i21845R3R8R5R36R6tgoR0y43:assets%2Fimages%2FBlue%2FSpacemines%2F2.pngR2i27435R3R8R5R37R6tgoR0y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F1.pngR2i75510R3R8R5R38R6tgoR0y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F2.pngR2i76808R3R8R5R39R6tgoR0y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F3.pngR2i74578R3R8R5R40R6tgoR0y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F4.pngR2i75122R3R8R5R41R6tgoR0y44:assets%2Fimages%2FBlue%2Fspaceship_enemy.pngR2i70534R3R8R5R42R6tgoR0y44:assets%2Fimages%2FBlue%2Fspace_bomb_blue.pngR2i20423R3R8R5R43R6tgoR0y44:assets%2Fimages%2FBlue%2Fspace_mine_blue.pngR2i21845R3R8R5R44R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_0.pngR2i16562R3R8R5R45R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_1.pngR2i16733R3R8R5R46R6tgoR0y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_10.pngR2i28211R3R8R5R47R6tgoR0y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_11.pngR2i29298R3R8R5R48R6tgoR0y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_12.pngR2i30536R3R8R5R49R6tgoR0y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_13.pngR2i23844R3R8R5R50R6tgoR0y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_14.pngR2i24593R3R8R5R51R6tgoR0y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_15.pngR2i25218R3R8R5R52R6tgoR0y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_16.pngR2i21641R3R8R5R53R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_2.pngR2i17352R3R8R5R54R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_3.pngR2i17820R3R8R5R55R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_4.pngR2i18745R3R8R5R56R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_5.pngR2i20336R3R8R5R57R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_6.pngR2i22355R3R8R5R58R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_7.pngR2i23963R3R8R5R59R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_8.pngR2i25569R3R8R5R60R6tgoR0y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_9.pngR2i27364R3R8R5R61R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_0.pngR2i60493R3R8R5R62R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_1.pngR2i58350R3R8R5R63R6tgoR0y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_10.pngR2i67483R3R8R5R64R6tgoR0y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_11.pngR2i72259R3R8R5R65R6tgoR0y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_12.pngR2i68927R3R8R5R66R6tgoR0y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_13.pngR2i72222R3R8R5R67R6tgoR0y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_14.pngR2i70850R3R8R5R68R6tgoR0y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_15.pngR2i9403R3R8R5R69R6tgoR0y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_16.pngR2i4670R3R8R5R70R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_2.pngR2i60986R3R8R5R71R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_3.pngR2i58617R3R8R5R72R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_4.pngR2i61222R3R8R5R73R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_5.pngR2i61148R3R8R5R74R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_6.pngR2i64352R3R8R5R75R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_7.pngR2i65111R3R8R5R76R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_8.pngR2i66315R3R8R5R77R6tgoR0y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_9.pngR2i69673R3R8R5R78R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_0.pngR2i58646R3R8R5R79R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_1.pngR2i59932R3R8R5R80R6tgoR0y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_10.pngR2i61068R3R8R5R81R6tgoR0y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_11.pngR2i60094R3R8R5R82R6tgoR0y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_12.pngR2i60843R3R8R5R83R6tgoR0y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_13.pngR2i60895R3R8R5R84R6tgoR0y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_14.pngR2i60554R3R8R5R85R6tgoR0y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_15.pngR2i9903R3R8R5R86R6tgoR0y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_16.pngR2i7558R3R8R5R87R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_2.pngR2i59071R3R8R5R88R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_3.pngR2i59383R3R8R5R89R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_4.pngR2i59600R3R8R5R90R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_5.pngR2i59112R3R8R5R91R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_6.pngR2i60115R3R8R5R92R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_7.pngR2i58906R3R8R5R93R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_8.pngR2i60994R3R8R5R94R6tgoR0y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_9.pngR2i59314R3R8R5R95R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_0.pngR2i20203R3R8R5R96R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_1.pngR2i20679R3R8R5R97R6tgoR0y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_10.pngR2i30459R3R8R5R98R6tgoR0y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_11.pngR2i30080R3R8R5R99R6tgoR0y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_12.pngR2i22712R3R8R5R100R6tgoR0y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_13.pngR2i14374R3R8R5R101R6tgoR0y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_14.pngR2i14685R3R8R5R102R6tgoR0y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_15.pngR2i14944R3R8R5R103R6tgoR0y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_16.pngR2i12951R3R8R5R104R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_2.pngR2i21462R3R8R5R105R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_3.pngR2i22144R3R8R5R106R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_4.pngR2i22735R3R8R5R107R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_5.pngR2i23989R3R8R5R108R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_6.pngR2i25147R3R8R5R109R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_7.pngR2i25778R3R8R5R110R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_8.pngR2i27649R3R8R5R111R6tgoR0y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_9.pngR2i28958R3R8R5R112R6tgoR0y72:assets%2Fimages%2FEffects%2FRed%20Explosion%2Fimageedit_2_9205107586.pngR2i75164R3R8R5R113R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R114R6tgoR0y54:assets%2Fimages%2FMenu%20Screen%2FCreditst_buttons.pngR2i10914R3R8R5R115R6tgoR0y62:assets%2Fimages%2FMenu%20Screen%2FCreditst_buttons_pressed.pngR2i10903R3R8R5R116R6tgoR0y50:assets%2Fimages%2FMenu%20Screen%2Fexit_buttons.pngR2i9435R3R8R5R117R6tgoR0y58:assets%2Fimages%2FMenu%20Screen%2Fexit_buttons_pressed.pngR2i9397R3R8R5R118R6tgoR0y54:assets%2Fimages%2FMenu%20Screen%2Foptionst_buttons.pngR2i10677R3R8R5R119R6tgoR0y62:assets%2Fimages%2FMenu%20Screen%2Foptionst_buttons_pressed.pngR2i10675R3R8R5R120R6tgoR0y50:assets%2Fimages%2FMenu%20Screen%2Fplay_buttons.pngR2i10542R3R8R5R121R6tgoR0y63:assets%2Fimages%2FMenu%20Screen%2Fplay_buttons_pressed_blue.pngR2i10501R3R8R5R122R6tgoR0y35:assets%2Fimages%2FPlayer%2Fidle.pngR2i391801R3R8R5R123R6tgoR0y31:assets%2Fimages%2FRead%20Me.txtR2i166R3R4R5R124R6tgoR0y49:assets%2Fimages%2FRed%2Falienship_new_red_try.pngR2i60806R3R8R5R125R6tgoR0y38:assets%2Fimages%2FRed%2Fbullet_red.pngR2i5519R3R8R5R126R6tgoR0y46:assets%2Fimages%2FRed%2FCommunicationship2.pngR2i75626R3R8R5R127R6tgoR0y44:assets%2Fimages%2FRed%2Fcomm_redship%2F1.pngR2i86722R3R8R5R128R6tgoR0y44:assets%2Fimages%2FRed%2Fcomm_redship%2F2.pngR2i90237R3R8R5R129R6tgoR0y44:assets%2Fimages%2FRed%2Fcomm_redship%2F3.pngR2i86543R3R8R5R130R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F1.pngR2i79072R3R8R5R131R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F2.pngR2i81787R3R8R5R132R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F3.pngR2i79781R3R8R5R133R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F4.pngR2i81717R3R8R5R134R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F5.pngR2i81183R3R8R5R135R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F6.pngR2i80294R3R8R5R136R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F7.pngR2i81611R3R8R5R137R6tgoR0y47:assets%2Fimages%2FRed%2FEnemy_animation%2F8.pngR2i79792R3R8R5R138R6tgoR0y67:assets%2Fimages%2FRed%2FEnemy_animation%2Fspaceship_enemy_start.pngR2i76999R3R8R5R139R6tgoR0y42:assets%2Fimages%2FRed%2Fmothership_try.pngR2i193287R3R8R5R140R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F1.pngR2i74738R3R8R5R141R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F2.pngR2i73926R3R8R5R142R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F3.pngR2i72878R3R8R5R143R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F4.pngR2i74356R3R8R5R144R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F5.pngR2i72223R3R8R5R145R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F6.pngR2i70225R3R8R5R146R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F7.pngR2i71586R3R8R5R147R6tgoR0y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F8.pngR2i75699R3R8R5R148R6tgoR0y39:assets%2Fimages%2FRed%2Fsmall_ships.pngR2i44235R3R8R5R149R6tgoR0y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F1.pngR2i50485R3R8R5R150R6tgoR0y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F2.pngR2i50850R3R8R5R151R6tgoR0y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F3.pngR2i50713R3R8R5R152R6tgoR0y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F4.pngR2i51323R3R8R5R153R6tgoR0y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F5.pngR2i52262R3R8R5R154R6tgoR0y42:assets%2Fimages%2FRed%2FSpacebombs%2F1.pngR2i19848R3R8R5R155R6tgoR0y42:assets%2Fimages%2FRed%2FSpacebombs%2F2.pngR2i20279R3R8R5R156R6tgoR0y42:assets%2Fimages%2FRed%2FSpacebombs%2F3.pngR2i20058R3R8R5R157R6tgoR0y42:assets%2Fimages%2FRed%2FSpacemines%2F1.pngR2i21280R3R8R5R158R6tgoR0y42:assets%2Fimages%2FRed%2FSpacemines%2F2.pngR2i26250R3R8R5R159R6tgoR0y47:assets%2Fimages%2FRed%2Fspaceship_enemy_red.pngR2i75110R3R8R5R160R6tgoR0y38:assets%2Fimages%2FRed%2Fspace_bomb.pngR2i20058R3R8R5R161R6tgoR0y38:assets%2Fimages%2FRed%2Fspace_mine.pngR2i21280R3R8R5R162R6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R163R6tgoR0y36:assets%2Fsounds%2Fsounds-go-here.txtR2zR3R4R5R164R6tgoR2i2114R3y5:MUSICR5y26:flixel%2Fsounds%2Fbeep.mp3y9:pathGroupaR166y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R165R5y28:flixel%2Fsounds%2Fflixel.mp3R167aR169y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R168R167aR166R168hgoR2i33629R3R171R5R170R167aR169R170hgoR2i15744R3y4:FONTy9:classNamey35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R172R173y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R8R5R178R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R8R5R179R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_brown_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_dark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_gay_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_grey_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_background_background_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_alienship_new_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_bullet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_communicationship_blue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_communication_ship_animation_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_communication_ship_animation_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_communication_ship_animation_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_mothership_blue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacebombs_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacebombs_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacebombs_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacemines_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacemines_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_enemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_space_bomb_blue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_blue_space_mine_blue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_11_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_12_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_13_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_14_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_15_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_16_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_11_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_12_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_13_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_14_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_15_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_16_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_11_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_12_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_13_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_14_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_15_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_16_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_11_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_12_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_13_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_14_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_15_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_16_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_imageedit_2_9205107586_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_creditst_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_creditst_buttons_pressed_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_exit_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_exit_buttons_pressed_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_optionst_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_optionst_buttons_pressed_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_play_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_play_buttons_pressed_blue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_player_idle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_read_me_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_alienship_new_red_try_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_bullet_red_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_communicationship2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_comm_redship_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_comm_redship_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_comm_redship_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_spaceship_enemy_start_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_mothership_try_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ships_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_spacebombs_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_spacebombs_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_spacebombs_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_spacemines_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_spacemines_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_spaceship_enemy_red_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_space_bomb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_red_space_mine_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/Aestroids/aestroid_brown.png") @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_brown_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Aestroids/aestroid_dark.png") @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_dark_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Aestroids/aestroid_gay_2.png") @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_gay_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Aestroids/aestroid_grey.png") @:noCompletion #if display private #end class __ASSET__assets_images_aestroids_aestroid_grey_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Background/background.jpg") @:noCompletion #if display private #end class __ASSET__assets_images_background_background_jpg extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/alienship_new.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_alienship_new_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/4.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/5.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/6.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/7.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Animation/8.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_animation_8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/bullet.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_bullet_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Communicationship_blue.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_communicationship_blue_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/communication_ship_animation/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_communication_ship_animation_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/communication_ship_animation/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_communication_ship_animation_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/communication_ship_animation/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_communication_ship_animation_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/mothership_blue.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_mothership_blue_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Small_ship_blue/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Small_ship_blue/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Small_ship_blue/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Small_ship_blue/4.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Small_ship_blue/5.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_small_ship_blue_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Spacebombs/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacebombs_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Spacebombs/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacebombs_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Spacebombs/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacebombs_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Spacemines/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacemines_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/Spacemines/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spacemines_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/spaceship_blue_animation/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/spaceship_blue_animation/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/spaceship_blue_animation/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/spaceship_blue_animation/4.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_blue_animation_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/spaceship_enemy.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_spaceship_enemy_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/space_bomb_blue.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_space_bomb_blue_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Blue/space_mine_blue.png") @:noCompletion #if display private #end class __ASSET__assets_images_blue_space_mine_blue_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_0.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_0_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_1.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_10.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_10_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_11.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_11_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_12.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_12_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_13.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_13_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_14.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_14_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_15.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_15_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_16.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_16_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_2.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_3.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_4.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_5.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_6.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_7.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_8.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Blue Effects/1_9.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_blue_effects_1_9_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_0.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_0_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_1.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_10.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_10_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_11.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_11_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_12.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_12_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_13.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_13_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_14.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_14_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_15.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_15_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_16.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_16_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_2.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_3.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_4.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_5.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_6.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_7.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_8.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Galaxy/galaxy_9.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_galaxy_galaxy_9_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_0.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_0_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_1.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_10.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_10_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_11.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_11_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_12.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_12_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_13.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_13_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_14.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_14_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_15.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_15_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_16.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_16_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_2.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_3.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_4.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_5.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_6.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_7.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_8.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Proton Star/p_Sprite_9.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_proton_star_p_sprite_9_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_0.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_0_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_1.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_10.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_10_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_11.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_11_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_12.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_12_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_13.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_13_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_14.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_14_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_15.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_15_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_16.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_16_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_2.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_3.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_4.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_5.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_6.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_7.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_8.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/1_9.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_1_9_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Effects/Red Explosion/imageedit_2_9205107586.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_red_explosion_imageedit_2_9205107586_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu Screen/Creditst_buttons.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_creditst_buttons_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu Screen/Creditst_buttons_pressed.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_creditst_buttons_pressed_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu Screen/exit_buttons.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_exit_buttons_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu Screen/exit_buttons_pressed.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_exit_buttons_pressed_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu Screen/optionst_buttons.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_optionst_buttons_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu Screen/optionst_buttons_pressed.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_optionst_buttons_pressed_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu Screen/play_buttons.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_play_buttons_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu Screen/play_buttons_pressed_blue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_play_buttons_pressed_blue_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Player/idle.png") @:noCompletion #if display private #end class __ASSET__assets_images_player_idle_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Read Me.txt") @:noCompletion #if display private #end class __ASSET__assets_images_read_me_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/Red/alienship_new_red_try.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_alienship_new_red_try_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/bullet_red.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_bullet_red_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Communicationship2.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_communicationship2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/comm_redship/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_comm_redship_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/comm_redship/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_comm_redship_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/comm_redship/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_comm_redship_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/4.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/5.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/6.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/7.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/8.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Enemy_animation/spaceship_enemy_start.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_enemy_animation_spaceship_enemy_start_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/mothership_try.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_mothership_try_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/4.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/5.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/6.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/7.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Red Plane animation/8.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_red_plane_animation_8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/small_ships.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ships_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/small_ship_animation/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/small_ship_animation/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/small_ship_animation/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/small_ship_animation/4.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/small_ship_animation/5.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_small_ship_animation_5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Spacebombs/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_spacebombs_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Spacebombs/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_spacebombs_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Spacebombs/3.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_spacebombs_3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Spacemines/1.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_spacemines_1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/Spacemines/2.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_spacemines_2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/spaceship_enemy_red.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_spaceship_enemy_red_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/space_bomb.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_space_bomb_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Red/space_mine.png") @:noCompletion #if display private #end class __ASSET__assets_images_red_space_mine_png extends lime.graphics.Image {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
