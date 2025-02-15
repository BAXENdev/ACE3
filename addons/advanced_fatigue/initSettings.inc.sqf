[
    QGVAR(enabled),
    "CHECKBOX",
    [LSTRING(Enabled), LSTRING(Enabled_Description)],
    LSTRING(DisplayName),
    true,
    true, {
        if (!_this) then {
            private _staminaBarContainer = uiNamespace getVariable [QGVAR(staminaBarContainer), controlNull];
            _staminaBarContainer ctrlSetFade 1;
            _staminaBarContainer ctrlCommit 0;
        };
        [QGVAR(enabled), _this] call EFUNC(common,cbaSettings_settingChanged)
    },
    true // Needs mission restart
] call CBA_fnc_addSetting;

[
    QGVAR(enableStaminaBar),
    "CHECKBOX",
    [LSTRING(EnableStaminaBar), LSTRING(EnableStaminaBar_Description)],
    LSTRING(DisplayName),
    true,
    true, {
        if (!_this) then {
            private _staminaBarContainer = uiNamespace getVariable [QGVAR(staminaBarContainer), controlNull];
            _staminaBarContainer ctrlSetFade 1;
            _staminaBarContainer ctrlCommit 0;
        };
    }
] call CBA_fnc_addSetting;

[
    QGVAR(fadeStaminaBar),
    "CHECKBOX",
    [LSTRING(FadeStaminaBar), LSTRING(FadeStaminaBar_Description)],
    LSTRING(DisplayName),
    true,
    false, {
        if (!_this && GVAR(enabled) && GVAR(enableStaminaBar)) then {
            private _staminaBarContainer = uiNamespace getVariable [QGVAR(staminaBarContainer), controlNull];
            _staminaBarContainer ctrlSetFade 0;
            _staminaBarContainer ctrlCommit 0;
        };
    }
] call CBA_fnc_addSetting;

[
    QGVAR(performanceFactor),
    "SLIDER",
    [LSTRING(PerformanceFactor), LSTRING(PerformanceFactor_Description)],
    LSTRING(DisplayName),
    [0, 5, 1, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(recoveryFactor),
    "SLIDER",
    [LSTRING(RecoveryFactor), LSTRING(RecoveryFactor_Description)],
    LSTRING(DisplayName),
    [0, 5, 1, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(loadFactor),
    "SLIDER",
    [LSTRING(LoadFactor), LSTRING(LoadFactor_Description)],
    LSTRING(DisplayName),
    [0, 5, 1, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(terrainGradientFactor),
    "SLIDER",
    [LSTRING(TerrainGradientFactor), LSTRING(TerrainGradientFactor_Description)],
    LSTRING(DisplayName),
    [0, 5, 1, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(swayFactor),
    "SLIDER",
    [LSTRING(SwayFactor), LSTRING(SwayFactor_Description)],
    LSTRING(DisplayName),
    [0, 5, 1, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(restedSwayFactor),
    "SLIDER",
    [LSTRING(RestedSwayFactor), LSTRING(RestedSwayFactor_Description)],
    LSTRING(DisplayName),
    [0, 5, 1, 2],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(deployedSwayFactor),
    "SLIDER",
    [LSTRING(DeployedSwayFactor), LSTRING(DeployedSwayFactor_Description)],
    LSTRING(DisplayName),
    [0, 5, 1, 2],
    true
] call CBA_fnc_addSetting;
