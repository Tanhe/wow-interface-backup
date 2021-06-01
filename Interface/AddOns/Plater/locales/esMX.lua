local L = LibStub("AceLocale-3.0"):NewLocale("PlaterNameplates", "esMX") 
if not L then return end 

L["OPTIONS_ALPHA"] = "Alfa"
L["OPTIONS_ANCHOR"] = "Ancla"
L["OPTIONS_ANCHOR_BOTTOM"] = "Fondo"
L["OPTIONS_ANCHOR_BOTTOMLEFT"] = "Fondo Izquierda"
L["OPTIONS_ANCHOR_BOTTOMRIGHT"] = "Fondo Derecha"
L["OPTIONS_ANCHOR_CENTER"] = "Centro"
L["OPTIONS_ANCHOR_INNERBOTTOM"] = "Fondo Interior"
L["OPTIONS_ANCHOR_INNERLEFT"] = "Fondo Izquierdo"
L["OPTIONS_ANCHOR_INNERRIGHT"] = "Fondo Derecho"
L["OPTIONS_ANCHOR_INNERTOP"] = "Parte Superior Interior"
L["OPTIONS_ANCHOR_LEFT"] = "Izquierda"
L["OPTIONS_ANCHOR_RIGHT"] = "Derecha"
L["OPTIONS_ANCHOR_TOP"] = "Arriba"
L["OPTIONS_ANCHOR_TOPLEFT"] = "Arriba Izquierda"
L["OPTIONS_ANCHOR_TOPRIGHT"] = "Arriba Derecha"
L["OPTIONS_CANCEL"] = "Cancelar"
L["OPTIONS_COLOR"] = "Color"
L["OPTIONS_ENABLED"] = "Habilitadas"
L["OPTIONS_ERROR_CVARMODIFY"] = "Los cvars no se pueden cambiar en combate."
L["OPTIONS_ERROR_EXPORTSTRINGERROR"] = "no se pudo exportar"
L["OPTIONS_FONT"] = "Fuente"
L["OPTIONS_FRIENDLY"] = "Amistoso"
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_ANCHOR_TITLE"] = "Apariencia de barra de salud"
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_BGCOLOR"] = "Color de fondo y Alfa de Barra de salud "
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_BGTEXTURE"] = "Textura de fondo de barra de salud"
L["OPTIONS_GENERALSETTINGS_HEALTHBAR_TEXTURE"] = "Textura de barra de salud"
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_ANCHOR_TITLE"] = "La transparencia se utiliza para"
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_RANGECHECK"] = "Comprobación de rango"
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_RANGECHECK_ALPHA"] = "Alfa"
L["OPTIONS_GENERALSETTINGS_TRANSPARENCY_RANGECHECK_SPEC_DESC"] = "Hechizo para comprobar el alcance de esta especialización."
L["OPTIONS_HOSTILE"] = "Hostil"
L["OPTIONS_NEUTRAL"] = "Neutral"
L["OPTIONS_OKAY"] = "Okay"
L["OPTIONS_OUTLINE"] = "Contorno"
L["OPTIONS_PLEASEWAIT"] = "Esto puede tomar solo unos segundos"
L["OPTIONS_PROFILE_CONFIG_EXPORTINGTASK"] = "Plater está exportando el perfil actual"
L["OPTIONS_PROFILE_CONFIG_EXPORTPROFILE"] = "Exportar Perfil"
L["OPTIONS_PROFILE_CONFIG_IMPORTPROFILE"] = "Importar Perfil"
L["OPTIONS_PROFILE_CONFIG_MOREPROFILES"] = "Obtenga más perfiles en Wago.io"
L["OPTIONS_PROFILE_CONFIG_OPENSETTINGS"] = "Abrir configuración de Perfil"
L["OPTIONS_PROFILE_CONFIG_PROFILENAME"] = "Nuevo nombre de perfil"
L["OPTIONS_PROFILE_CONFIG_PROFILENAME_DESC"] = "Un nuevo perfil se creó con la cadena importada. Insertar el nombre de un perfil que ya existe lo sobrescribirá."
L["OPTIONS_PROFILE_ERROR_PROFILENAME"] = "Nombre de perfil inválido"
L["OPTIONS_PROFILE_ERROR_STRINGINVALID"] = "Archivo de perfil inválido."
L["OPTIONS_PROFILE_ERROR_WRONGTAB"] = "Archivo de perfil inválido. Importe scripts o mods en la pestaña de scripts."
L["OPTIONS_PROFILE_IMPORT_OVERWRITE"] = "El perfil '%s' ya existe, ¿sobrescribirlo?"
L["OPTIONS_SETTINGS_COPIED"] = "ajustes copiados."
L["OPTIONS_SETTINGS_FAIL_COPIED"] = "no se pudo obtener la configuración de la pestaña seleccionada actual."
L["OPTIONS_SHADOWCOLOR"] = "Color de la sombra"
L["OPTIONS_SIZE"] = "Tamaño"
L["OPTIONS_STATUSBAR_TEXT"] = "Ahora puede importar perfiles, modificaciones, scripts, animaciones y tablas de colores desde |cFFFFAA00http://wago.io|r"
L["OPTIONS_TABNAME_ADVANCED"] = "Avanzado"
L["OPTIONS_TABNAME_ANIMATIONS"] = "Animaciones"
L["OPTIONS_TABNAME_AUTO"] = "Automático"
L["OPTIONS_TABNAME_BUFF_LIST"] = "Lista de beneficios"
L["OPTIONS_TABNAME_BUFF_SETTINGS"] = "Configuración de beneficios"
L["OPTIONS_TABNAME_BUFF_SPECIAL"] = "Beneficios Especiales"
L["OPTIONS_TABNAME_BUFF_TRACKING"] = "Seguimiento de beneficios"
L["OPTIONS_TABNAME_COLORSNPC"] = "Colores de PNJ"
L["OPTIONS_TABNAME_CREDITS"] = "Creditos"
L["OPTIONS_TABNAME_GENERALSETTINGS"] = "Configuración general"
L["OPTIONS_TABNAME_MODDING"] = "Modding"
L["OPTIONS_TABNAME_NPCENEMY"] = "PNJ Enemigo"
L["OPTIONS_TABNAME_NPCFRIENDLY"] = "PNJ Amistoso"
L["OPTIONS_TABNAME_PERSONAL"] = "Barra Personal"
L["OPTIONS_TABNAME_PLAYERENEMY"] = "Jugador Enemigo"
L["OPTIONS_TABNAME_PLAYERFRIENDLY"] = "Jugador Amistoso"
L["OPTIONS_TABNAME_PROFILES"] = "Perfiles"
L["OPTIONS_TABNAME_SCRIPTING"] = "Scripting"
L["OPTIONS_TABNAME_STRATA"] = "Nivel y Capas"
L["OPTIONS_TABNAME_TARGET"] = "Objetivo"
L["OPTIONS_TABNAME_THREAT"] = "Amenaza / Aggro"
L["OPTIONS_TEXTURE"] = "Textura"
L["OPTIONS_THREAT_AGGROSTATE_ANOTHERTANK"] = "Aggro en Otro Tanque"
L["OPTIONS_THREAT_AGGROSTATE_HIGHTHREAT"] = "Amenaza alta"
L["OPTIONS_THREAT_AGGROSTATE_NOAGGRO"] = "Sin Aggro"
L["OPTIONS_THREAT_AGGROSTATE_NOTANK"] = "Sin Aggro de Tanque"
L["OPTIONS_THREAT_AGGROSTATE_NOTINCOMBAT"] = "Unidad sin combate"
L["OPTIONS_THREAT_AGGROSTATE_ONYOU_LOWAGGRO"] = "Aggro en ti pero es bajo"
L["OPTIONS_THREAT_AGGROSTATE_ONYOU_LOWAGGRO_DESC"] = "La unidad te está atacando, pero otros están a punto de pasar de aggro."
L["OPTIONS_THREAT_AGGROSTATE_ONYOU_SOLID"] = "Aggro en Tí"
L["OPTIONS_THREAT_AGGROSTATE_TAPPED"] = "Unidad Golpeada"
L["OPTIONS_THREAT_COLOR_DPS_ANCHOR_TITLE"] = "Color al jugar como DPS o HEALER"
L["OPTIONS_THREAT_COLOR_DPS_HIGHTHREAT_DESC"] = "La unidad está por comenzar a atacarte."
L["OPTIONS_THREAT_COLOR_DPS_NOAGGRO_DESC"] = "La unidad no te está atacando."
L["OPTIONS_THREAT_COLOR_DPS_NOTANK_DESC"] = "La unidad no te está atacando a ti ni a un tanque y lo más probable es que esté atacando a otro sanador o dps de tu grupo."
L["OPTIONS_THREAT_COLOR_DPS_ONYOU_SOLID_DESC"] = "La unidad te está atacando."
L["OPTIONS_THREAT_COLOR_OVERRIDE_ANCHOR_TITLE"] = "Anular colores predeterminados"
L["OPTIONS_THREAT_COLOR_OVERRIDE_DESC"] = "Modifique los colores predeterminados establecidos por el juego para unidades neutrales, hostiles y amistosas. Durante el combate, estos colores también se anularán si se permite que los colores de amenaza cambien el color de la barra de salud."
L["OPTIONS_THREAT_COLOR_TANK_ANCHOR_TITLE"] = "Color al jugar como TANQUE"
L["OPTIONS_THREAT_COLOR_TANK_ANOTHERTANK_DESC"] = "La unidad está siendo tanqueada por otro tanque en su grupo."
L["OPTIONS_THREAT_COLOR_TANK_NOAGGRO_DESC"] = "La unidad no tiene aggro en tí."
L["OPTIONS_THREAT_COLOR_TANK_NOTINCOMBAT_DESC"] = "La unidad no está en combate."
L["OPTIONS_THREAT_COLOR_TANK_ONYOU_SOLID_DESC"] = "La unidad te está atacando y tienes un aggro sólido."
L["OPTIONS_THREAT_COLOR_TAPPED_DESC"] = "Cuando alguien más ha reclamado la unidad (cuando no recibes experiencia o botín por matarla)."
L["OPTIONS_THREAT_DPS_CANCHECKNOTANK"] = "Comprobar si no hay aggro de tanque"
L["OPTIONS_THREAT_DPS_CANCHECKNOTANK_DESC"] = "Cuando no tienes aggro como sanador o dps, verifica si el enemigo está atacando a otra unidad que no es un tanque."
L["OPTIONS_THREAT_MODIFIERS_ANCHOR_TITLE"] = "Modificadores de Amenaza"
L["OPTIONS_THREAT_MODIFIERS_BORDERCOLOR"] = "Color del borde"
L["OPTIONS_THREAT_MODIFIERS_HEALTHBARCOLOR"] = "Color de barra de salud"
L["OPTIONS_THREAT_MODIFIERS_NAMECOLOR"] = "Nombre de color"
L["OPTIONS_XOFFSET"] = "Vértice X"
L["OPTIONS_YOFFSET"] = "Vértice Y"
