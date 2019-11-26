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

		data = '{"name":null,"assets":"aoy4:sizezy4:typey4:TEXTy9:classNamey39:__ASSET__assets_data_data_goes_here_txty2:idy34:assets%2Fdata%2Fdata-goes-here.txtgoR0i43127R1y5:IMAGER3y51:__ASSET__assets_images_aestroids_aestroid_brown_pngR5y48:assets%2Fimages%2FAestroids%2Faestroid_brown.pnggoR0i30847R1R7R3y50:__ASSET__assets_images_aestroids_aestroid_dark_pngR5y47:assets%2Fimages%2FAestroids%2Faestroid_dark.pnggoR0i36595R1R7R3y51:__ASSET__assets_images_aestroids_aestroid_gay_2_pngR5y48:assets%2Fimages%2FAestroids%2Faestroid_gay_2.pnggoR0i33314R1R7R3y50:__ASSET__assets_images_aestroids_aestroid_grey_pngR5y47:assets%2Fimages%2FAestroids%2Faestroid_grey.pnggoR0i30450R1R7R3y48:__ASSET__assets_images_background_background_jpgR5y45:assets%2Fimages%2FBackground%2Fbackground.jpggoR0i59915R1R7R3y45:__ASSET__assets_images_blue_alienship_new_pngR5y42:assets%2Fimages%2FBlue%2Falienship_new.pnggoR0i74071R1R7R3y43:__ASSET__assets_images_blue_animation_1_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F1.pnggoR0i73394R1R7R3y43:__ASSET__assets_images_blue_animation_2_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F2.pnggoR0i72356R1R7R3y43:__ASSET__assets_images_blue_animation_3_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F3.pnggoR0i73755R1R7R3y43:__ASSET__assets_images_blue_animation_4_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F4.pnggoR0i71662R1R7R3y43:__ASSET__assets_images_blue_animation_5_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F5.pnggoR0i69797R1R7R3y43:__ASSET__assets_images_blue_animation_6_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F6.pnggoR0i70942R1R7R3y43:__ASSET__assets_images_blue_animation_7_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F7.pnggoR0i74868R1R7R3y43:__ASSET__assets_images_blue_animation_8_pngR5y42:assets%2Fimages%2FBlue%2FAnimation%2F8.pnggoR0i5665R1R7R3y38:__ASSET__assets_images_blue_bullet_pngR5y35:assets%2Fimages%2FBlue%2Fbullet.pnggoR0i93651R1R7R3y54:__ASSET__assets_images_blue_communicationship_blue_pngR5y51:assets%2Fimages%2FBlue%2FCommunicationship_blue.pnggoR0i93651R1R7R3y62:__ASSET__assets_images_blue_communication_ship_animation_1_pngR5y61:assets%2Fimages%2FBlue%2Fcommunication_ship_animation%2F1.pnggoR0i97209R1R7R3y62:__ASSET__assets_images_blue_communication_ship_animation_2_pngR5y61:assets%2Fimages%2FBlue%2Fcommunication_ship_animation%2F2.pnggoR0i89477R1R7R3y62:__ASSET__assets_images_blue_communication_ship_animation_3_pngR5y61:assets%2Fimages%2FBlue%2Fcommunication_ship_animation%2F3.pnggoR0i205568R1R7R3y47:__ASSET__assets_images_blue_mothership_blue_pngR5y44:assets%2Fimages%2FBlue%2Fmothership_blue.pnggoR0i52696R1R7R3y49:__ASSET__assets_images_blue_small_ship_blue_1_pngR5y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F1.pnggoR0i53007R1R7R3y49:__ASSET__assets_images_blue_small_ship_blue_2_pngR5y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F2.pnggoR0i52847R1R7R3y49:__ASSET__assets_images_blue_small_ship_blue_3_pngR5y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F3.pnggoR0i53541R1R7R3y49:__ASSET__assets_images_blue_small_ship_blue_4_pngR5y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F4.pnggoR0i54536R1R7R3y49:__ASSET__assets_images_blue_small_ship_blue_5_pngR5y48:assets%2Fimages%2FBlue%2FSmall_ship_blue%2F5.pnggoR0i20149R1R7R3y44:__ASSET__assets_images_blue_spacebombs_1_pngR5y43:assets%2Fimages%2FBlue%2FSpacebombs%2F1.pnggoR0i20842R1R7R3y44:__ASSET__assets_images_blue_spacebombs_2_pngR5y43:assets%2Fimages%2FBlue%2FSpacebombs%2F2.pnggoR0i20423R1R7R3y44:__ASSET__assets_images_blue_spacebombs_3_pngR5y43:assets%2Fimages%2FBlue%2FSpacebombs%2F3.pnggoR0i21845R1R7R3y44:__ASSET__assets_images_blue_spacemines_1_pngR5y43:assets%2Fimages%2FBlue%2FSpacemines%2F1.pnggoR0i27435R1R7R3y44:__ASSET__assets_images_blue_spacemines_2_pngR5y43:assets%2Fimages%2FBlue%2FSpacemines%2F2.pnggoR0i75510R1R7R3y58:__ASSET__assets_images_blue_spaceship_blue_animation_1_pngR5y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F1.pnggoR0i76808R1R7R3y58:__ASSET__assets_images_blue_spaceship_blue_animation_2_pngR5y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F2.pnggoR0i74578R1R7R3y58:__ASSET__assets_images_blue_spaceship_blue_animation_3_pngR5y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F3.pnggoR0i75122R1R7R3y58:__ASSET__assets_images_blue_spaceship_blue_animation_4_pngR5y57:assets%2Fimages%2FBlue%2Fspaceship_blue_animation%2F4.pnggoR0i70534R1R7R3y47:__ASSET__assets_images_blue_spaceship_enemy_pngR5y44:assets%2Fimages%2FBlue%2Fspaceship_enemy.pnggoR0i20423R1R7R3y47:__ASSET__assets_images_blue_space_bomb_blue_pngR5y44:assets%2Fimages%2FBlue%2Fspace_bomb_blue.pnggoR0i21845R1R7R3y47:__ASSET__assets_images_blue_space_mine_blue_pngR5y44:assets%2Fimages%2FBlue%2Fspace_mine_blue.pnggoR0i16562R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_0_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_0.pnggoR0i16733R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_1_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_1.pnggoR0i28211R1R7R3y52:__ASSET__assets_images_effects_blue_effects_1_10_pngR5y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_10.pnggoR0i29298R1R7R3y52:__ASSET__assets_images_effects_blue_effects_1_11_pngR5y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_11.pnggoR0i30536R1R7R3y52:__ASSET__assets_images_effects_blue_effects_1_12_pngR5y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_12.pnggoR0i23844R1R7R3y52:__ASSET__assets_images_effects_blue_effects_1_13_pngR5y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_13.pnggoR0i24593R1R7R3y52:__ASSET__assets_images_effects_blue_effects_1_14_pngR5y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_14.pnggoR0i25218R1R7R3y52:__ASSET__assets_images_effects_blue_effects_1_15_pngR5y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_15.pnggoR0i21641R1R7R3y52:__ASSET__assets_images_effects_blue_effects_1_16_pngR5y53:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_16.pnggoR0i17352R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_2_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_2.pnggoR0i17820R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_3_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_3.pnggoR0i18745R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_4_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_4.pnggoR0i20336R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_5_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_5.pnggoR0i22355R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_6_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_6.pnggoR0i23963R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_7_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_7.pnggoR0i25569R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_8_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_8.pnggoR0i27364R1R7R3y51:__ASSET__assets_images_effects_blue_effects_1_9_pngR5y52:assets%2Fimages%2FEffects%2FBlue%20Effects%2F1_9.pnggoR0i60493R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_0_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_0.pnggoR0i58350R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_1_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_1.pnggoR0i67483R1R7R3y51:__ASSET__assets_images_effects_galaxy_galaxy_10_pngR5y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_10.pnggoR0i72259R1R7R3y51:__ASSET__assets_images_effects_galaxy_galaxy_11_pngR5y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_11.pnggoR0i68927R1R7R3y51:__ASSET__assets_images_effects_galaxy_galaxy_12_pngR5y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_12.pnggoR0i72222R1R7R3y51:__ASSET__assets_images_effects_galaxy_galaxy_13_pngR5y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_13.pnggoR0i70850R1R7R3y51:__ASSET__assets_images_effects_galaxy_galaxy_14_pngR5y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_14.pnggoR0i9403R1R7R3y51:__ASSET__assets_images_effects_galaxy_galaxy_15_pngR5y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_15.pnggoR0i4670R1R7R3y51:__ASSET__assets_images_effects_galaxy_galaxy_16_pngR5y50:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_16.pnggoR0i60986R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_2_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_2.pnggoR0i58617R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_3_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_3.pnggoR0i61222R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_4_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_4.pnggoR0i61148R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_5_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_5.pnggoR0i64352R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_6_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_6.pnggoR0i65111R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_7_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_7.pnggoR0i66315R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_8_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_8.pnggoR0i69673R1R7R3y50:__ASSET__assets_images_effects_galaxy_galaxy_9_pngR5y49:assets%2Fimages%2FEffects%2FGalaxy%2Fgalaxy_9.pnggoR0i58646R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_0_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_0.pnggoR0i59932R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_1_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_1.pnggoR0i61068R1R7R3y58:__ASSET__assets_images_effects_proton_star_p_sprite_10_pngR5y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_10.pnggoR0i60094R1R7R3y58:__ASSET__assets_images_effects_proton_star_p_sprite_11_pngR5y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_11.pnggoR0i60843R1R7R3y58:__ASSET__assets_images_effects_proton_star_p_sprite_12_pngR5y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_12.pnggoR0i60895R1R7R3y58:__ASSET__assets_images_effects_proton_star_p_sprite_13_pngR5y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_13.pnggoR0i60554R1R7R3y58:__ASSET__assets_images_effects_proton_star_p_sprite_14_pngR5y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_14.pnggoR0i9903R1R7R3y58:__ASSET__assets_images_effects_proton_star_p_sprite_15_pngR5y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_15.pnggoR0i7558R1R7R3y58:__ASSET__assets_images_effects_proton_star_p_sprite_16_pngR5y59:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_16.pnggoR0i59071R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_2_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_2.pnggoR0i59383R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_3_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_3.pnggoR0i59600R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_4_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_4.pnggoR0i59112R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_5_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_5.pnggoR0i60115R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_6_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_6.pnggoR0i58906R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_7_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_7.pnggoR0i60994R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_8_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_8.pnggoR0i59314R1R7R3y57:__ASSET__assets_images_effects_proton_star_p_sprite_9_pngR5y58:assets%2Fimages%2FEffects%2FProton%20Star%2Fp_Sprite_9.pnggoR0i20203R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_0_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_0.pnggoR0i20679R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_1_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_1.pnggoR0i30459R1R7R3y53:__ASSET__assets_images_effects_red_explosion_1_10_pngR5y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_10.pnggoR0i30080R1R7R3y53:__ASSET__assets_images_effects_red_explosion_1_11_pngR5y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_11.pnggoR0i22712R1R7R3y53:__ASSET__assets_images_effects_red_explosion_1_12_pngR5y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_12.pnggoR0i14374R1R7R3y53:__ASSET__assets_images_effects_red_explosion_1_13_pngR5y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_13.pnggoR0i14685R1R7R3y53:__ASSET__assets_images_effects_red_explosion_1_14_pngR5y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_14.pnggoR0i14944R1R7R3y53:__ASSET__assets_images_effects_red_explosion_1_15_pngR5y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_15.pnggoR0i12951R1R7R3y53:__ASSET__assets_images_effects_red_explosion_1_16_pngR5y54:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_16.pnggoR0i21462R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_2_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_2.pnggoR0i22144R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_3_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_3.pnggoR0i22735R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_4_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_4.pnggoR0i23989R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_5_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_5.pnggoR0i25147R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_6_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_6.pnggoR0i25778R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_7_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_7.pnggoR0i27649R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_8_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_8.pnggoR0i28958R1R7R3y52:__ASSET__assets_images_effects_red_explosion_1_9_pngR5y53:assets%2Fimages%2FEffects%2FRed%20Explosion%2F1_9.pnggoR0i75164R1R7R3y71:__ASSET__assets_images_effects_red_explosion_imageedit_2_9205107586_pngR5y72:assets%2Fimages%2FEffects%2FRed%20Explosion%2Fimageedit_2_9205107586.pnggoR0zR1R2R3y41:__ASSET__assets_images_images_go_here_txtR5y36:assets%2Fimages%2Fimages-go-here.txtgoR0i10914R1R7R3y55:__ASSET__assets_images_menu_screen_creditst_buttons_pngR5y54:assets%2Fimages%2FMenu%20Screen%2FCreditst_buttons.pnggoR0i10903R1R7R3y63:__ASSET__assets_images_menu_screen_creditst_buttons_pressed_pngR5y62:assets%2Fimages%2FMenu%20Screen%2FCreditst_buttons_pressed.pnggoR0i9435R1R7R3y51:__ASSET__assets_images_menu_screen_exit_buttons_pngR5y50:assets%2Fimages%2FMenu%20Screen%2Fexit_buttons.pnggoR0i9397R1R7R3y59:__ASSET__assets_images_menu_screen_exit_buttons_pressed_pngR5y58:assets%2Fimages%2FMenu%20Screen%2Fexit_buttons_pressed.pnggoR0i10677R1R7R3y55:__ASSET__assets_images_menu_screen_optionst_buttons_pngR5y54:assets%2Fimages%2FMenu%20Screen%2Foptionst_buttons.pnggoR0i10675R1R7R3y63:__ASSET__assets_images_menu_screen_optionst_buttons_pressed_pngR5y62:assets%2Fimages%2FMenu%20Screen%2Foptionst_buttons_pressed.pnggoR0i10542R1R7R3y51:__ASSET__assets_images_menu_screen_play_buttons_pngR5y50:assets%2Fimages%2FMenu%20Screen%2Fplay_buttons.pnggoR0i10501R1R7R3y64:__ASSET__assets_images_menu_screen_play_buttons_pressed_blue_pngR5y63:assets%2Fimages%2FMenu%20Screen%2Fplay_buttons_pressed_blue.pnggoR0i391801R1R7R3y38:__ASSET__assets_images_player_idle_pngR5y35:assets%2Fimages%2FPlayer%2Fidle.pnggoR0i166R1R2R3y34:__ASSET__assets_images_read_me_txtR5y31:assets%2Fimages%2FRead%20Me.txtgoR0i60806R1R7R3y52:__ASSET__assets_images_red_alienship_new_red_try_pngR5y49:assets%2Fimages%2FRed%2Falienship_new_red_try.pnggoR0i5519R1R7R3y41:__ASSET__assets_images_red_bullet_red_pngR5y38:assets%2Fimages%2FRed%2Fbullet_red.pnggoR0i75626R1R7R3y49:__ASSET__assets_images_red_communicationship2_pngR5y46:assets%2Fimages%2FRed%2FCommunicationship2.pnggoR0i86722R1R7R3y45:__ASSET__assets_images_red_comm_redship_1_pngR5y44:assets%2Fimages%2FRed%2Fcomm_redship%2F1.pnggoR0i90237R1R7R3y45:__ASSET__assets_images_red_comm_redship_2_pngR5y44:assets%2Fimages%2FRed%2Fcomm_redship%2F2.pnggoR0i86543R1R7R3y45:__ASSET__assets_images_red_comm_redship_3_pngR5y44:assets%2Fimages%2FRed%2Fcomm_redship%2F3.pnggoR0i79072R1R7R3y48:__ASSET__assets_images_red_enemy_animation_1_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F1.pnggoR0i81787R1R7R3y48:__ASSET__assets_images_red_enemy_animation_2_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F2.pnggoR0i79781R1R7R3y48:__ASSET__assets_images_red_enemy_animation_3_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F3.pnggoR0i81717R1R7R3y48:__ASSET__assets_images_red_enemy_animation_4_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F4.pnggoR0i81183R1R7R3y48:__ASSET__assets_images_red_enemy_animation_5_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F5.pnggoR0i80294R1R7R3y48:__ASSET__assets_images_red_enemy_animation_6_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F6.pnggoR0i81611R1R7R3y48:__ASSET__assets_images_red_enemy_animation_7_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F7.pnggoR0i79792R1R7R3y48:__ASSET__assets_images_red_enemy_animation_8_pngR5y47:assets%2Fimages%2FRed%2FEnemy_animation%2F8.pnggoR0i76999R1R7R3y68:__ASSET__assets_images_red_enemy_animation_spaceship_enemy_start_pngR5y67:assets%2Fimages%2FRed%2FEnemy_animation%2Fspaceship_enemy_start.pnggoR0i193287R1R7R3y45:__ASSET__assets_images_red_mothership_try_pngR5y42:assets%2Fimages%2FRed%2Fmothership_try.pnggoR0i74738R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_1_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F1.pnggoR0i73926R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_2_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F2.pnggoR0i72878R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_3_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F3.pnggoR0i74356R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_4_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F4.pnggoR0i72223R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_5_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F5.pnggoR0i70225R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_6_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F6.pnggoR0i71586R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_7_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F7.pnggoR0i75699R1R7R3y52:__ASSET__assets_images_red_red_plane_animation_8_pngR5y55:assets%2Fimages%2FRed%2FRed%20Plane%20animation%2F8.pnggoR0i44235R1R7R3y42:__ASSET__assets_images_red_small_ships_pngR5y39:assets%2Fimages%2FRed%2Fsmall_ships.pnggoR0i50485R1R7R3y53:__ASSET__assets_images_red_small_ship_animation_1_pngR5y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F1.pnggoR0i50850R1R7R3y53:__ASSET__assets_images_red_small_ship_animation_2_pngR5y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F2.pnggoR0i50713R1R7R3y53:__ASSET__assets_images_red_small_ship_animation_3_pngR5y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F3.pnggoR0i51323R1R7R3y53:__ASSET__assets_images_red_small_ship_animation_4_pngR5y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F4.pnggoR0i52262R1R7R3y53:__ASSET__assets_images_red_small_ship_animation_5_pngR5y52:assets%2Fimages%2FRed%2Fsmall_ship_animation%2F5.pnggoR0i19848R1R7R3y43:__ASSET__assets_images_red_spacebombs_1_pngR5y42:assets%2Fimages%2FRed%2FSpacebombs%2F1.pnggoR0i20279R1R7R3y43:__ASSET__assets_images_red_spacebombs_2_pngR5y42:assets%2Fimages%2FRed%2FSpacebombs%2F2.pnggoR0i20058R1R7R3y43:__ASSET__assets_images_red_spacebombs_3_pngR5y42:assets%2Fimages%2FRed%2FSpacebombs%2F3.pnggoR0i21280R1R7R3y43:__ASSET__assets_images_red_spacemines_1_pngR5y42:assets%2Fimages%2FRed%2FSpacemines%2F1.pnggoR0i26250R1R7R3y43:__ASSET__assets_images_red_spacemines_2_pngR5y42:assets%2Fimages%2FRed%2FSpacemines%2F2.pnggoR0i75110R1R7R3y50:__ASSET__assets_images_red_spaceship_enemy_red_pngR5y47:assets%2Fimages%2FRed%2Fspaceship_enemy_red.pnggoR0i20058R1R7R3y41:__ASSET__assets_images_red_space_bomb_pngR5y38:assets%2Fimages%2FRed%2Fspace_bomb.pnggoR0i21280R1R7R3y41:__ASSET__assets_images_red_space_mine_pngR5y38:assets%2Fimages%2FRed%2Fspace_mine.pnggoR0zR1R2R3y41:__ASSET__assets_music_music_goes_here_txtR5y36:assets%2Fmusic%2Fmusic-goes-here.txtgoR0zR1R2R3y41:__ASSET__assets_sounds_sounds_go_here_txtR5y36:assets%2Fsounds%2Fsounds-go-here.txtgoR0i2114R1y5:MUSICR3y31:__ASSET__flixel_sounds_beep_mp3R5y26:flixel%2Fsounds%2Fbeep.mp3goR0i39706R1R322R3y33:__ASSET__flixel_sounds_flixel_mp3R5y28:flixel%2Fsounds%2Fflixel.mp3goR0i15744R1y4:FONTR3y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfgoR0i29724R1R327R3y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfgoR0i519R1R7R3y36:__ASSET__flixel_images_ui_button_pngR5y33:flixel%2Fimages%2Fui%2Fbutton.pnggoR0i3280R1R7R3y39:__ASSET__flixel_images_logo_default_pngR5y36:flixel%2Fimages%2Flogo%2Fdefault.pnggh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
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

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray { }
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
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_creditst_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_creditst_buttons_pressed_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_exit_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_exit_buttons_pressed_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_optionst_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_optionst_buttons_pressed_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_play_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_screen_play_buttons_pressed_blue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_player_idle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_read_me_txt extends flash.utils.ByteArray { }
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
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends flash.utils.ByteArray { }


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
@:keep @:font("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/fonts/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/fonts/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("D:/HaxeToolkit/haxe/lib/flixel/4,6,3/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


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
