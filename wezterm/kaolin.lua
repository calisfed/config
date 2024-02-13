local M = {}

M.palette = {
	--  Black  #020203
	black0 = "#161618",
	black1 = "#18181B",
	black2 = "#222225",
	black3 = "#2B2B2F",
	black4 = "#303035",
	-- --; Gray - #CED8D9
	gray0 = "#353b3c",
	gray1 = "#383e3f",
	-- --; gray2 = "#414849", ; old gray
	gray2 = "#4b5254",
	gray3 = "#545c5e",
	gray4 = "#60696b", --old alt-gray
	gray5 = "#697375",
	gray6 = "#737d80",
	gray7 = "#7c878a", -- old bright-gray
	gray8 = "#879193",
	gray9 = "#919a9c", -- old light-gray

	-- --; White - #FDFDFF
	white0 = "#f2f2f2",
	white1 = "#e6e6e8",
	white2 = "#d4d4d6",
	white3 = "#c9c9cd",
	white4 = "#bebec4",

	-- --; Yellow #FFFF00
	yellow0 = "#eeeb28",
	yellow1 = "#E3D168",
	yellow2 = "#a39423", ---- dark-yellow
	yellow3 = "#eae46a",
	yellow4 = "#c8c493", --"#ffd7a5",
	yellow5 = "#1e1e14", -- old midnight yellow
	yellow6 = "#40402E",
	yellow7 = "#848468",
	yellow8 = "#c5c5a5",
	yellow9 = "#EEEED3",

	-- --; Amber #FFBF00
	amber0 = "#f3c91f",
	amber1 = "#CFB05F",
	amber2 = "#91762a",
	amber3 = "#eed891",
	amber4 = "#c5b378",
	amber5 = "#1e1c14",
	amber6 = "#403B2E",
	amber7 = "#6E6653",
	amber8 = "#c7c2af",
	amber9 = "#eee6d3",

	-- --; Orange #FF7F00
	orange0 = "#e67417",
	orange1 = "#dbac66",
	orange2 = "#b87e3c",
	orange3 = "#f5c791",
	-- --; orange4 = "#e1b079",
	orange4 = "#dbb68f",
	orange5 = "#1e1914",
	orange6 = "#40392E",
	orange7 = "#847968",
	orange8 = "#c2b4a1", ---- grayish-orange
	orange9 = "#EEE6D3",

	-- --; Vermilion #FF3F00
	vermilion0 = "#F84B1B",
	vermilion1 = "#ca6036",
	vermilion2 = "#a14223",
	vermilion3 = "#ee7042",
	vermilion4 = "#cd9575", --"#d7af87", -- faded-orange
	vermilion5 = "#231610",
	vermilion6 = "#40332E",
	vermilion7 = "#847068",
	vermilion8 = "#bfaa9f",
	vermilion9 = "#EEDBD3",

	-- --; Brown #A33C28
	brown0 = "#872C19",
	brown1 = "#7d6360",
	brown2 = "#52413f",
	brown3 = "#B08C77",
	brown4 = "#B89A88",
	brown5 = "#1C1511",
	brown6 = "#40332E",
	brown7 = "#846B68",
	brown8 = "#AEA19E",
	brown9 = "#EEDDD3",

	-- --; Red #FF0000
	red0 = "#c93237",
	red1 = "#cd5c60",
	red2 = "#832729",
	red3 = "#e84c58",
	red4 = "#c86d6d",
	red5 = "#1E1414",
	red6 = "#402e2e",
	red7 = "#846869",
	red8 = "#CAABAB",
	red9 = "#EED3D7",

	-- --; Crimson #FF003F
	crimson0 = "#D6224D",
	crimson1 = "#e55c7a",
	crimson2 = "#941b37",
	crimson3 = "#ef6787", -- light-pink
	crimson4 = "#a0586c", -- moderate-pink
	crimson5 = "#210E14",
	crimson6 = "#402E33",
	crimson7 = "#84686E",
	crimson8 = "#c5b3b9",
	crimson9 = "#EED3DB",

	-- --; Rose/pink #FF007F
	pink0 = "#eb3380",
	pink1 = "#d24b83",
	pink2 = "#9E2256",
	pink3 = "#fbaed2",
	pink4 = "#c791aa",
	-- --; pink5 = "#210F17",
	pink5 = "#1e1419",
	-- --; pink6 = "#402E35",
	pink6 = "#513C44",
	pink7 = "#846874",
	pink8 = "#CAB2BD",
	pink9 = "#EED3DF",

	-- --; Cerise #FF00BF
	cerise0 = "#e121b1",
	cerise1 = "#cf44ac",
	cerise2 = "#a31880",
	cerise3 = "#e361c3",
	cerise4 = "#a9779c",
	cerise5 = "#23121c",
	cerise6 = "#402E3B",
	cerise7 = "#84687D",
	cerise8 = "#c7b7c2",
	cerise9 = "#EED3EA",

	-- --; Magenta/Fuchsia #FF00FF
	magenta0 = "#c932c9",
	-- --; magenta1 = "#cd5ccd",
	magenta1 = "#D16BD1",
	-- --; magenta2 = "#563d56",
	magenta2 = "#734073",
	magenta3 = "#cea2ca", -- light-puprle
	-- --; magenta4 = "#835d83", ; purple
	magenta4 = "#845A84", -- purple
	magenta5 = "#1a121a", -- old midnight-purple
	magenta6 = "#402E40",
	magenta7 = "#846884",
	magenta8 = "#BFA8BF",
	magenta9 = "#EED3EE",

	-- --; Purple #BF00FF
	purple0 = "#ab33eb",
	purple1 = "#A34BD2",
	-- --; TODO: change
	purple2 = "#73229E",
	purple3 = "#bc90d4",
	purple4 = "#ab98b5",
	purple5 = "#1f1623",
	purple6 = "#392E40",
	purple7 = "#7A6884",
	purple8 = "#bcacbf",
	purple9 = "#E6D3EE",

	-- --; Violet #7F00FF
	violet0 = "#853AE1",
	violet1 = "#8B48CF",
	violet2 = "#61259e",
	violet3 = "#c79af4",
	violet4 = "#9d81ba", -- alt-lavender
	violet5 = "#1f1926",
	violet6 = "#372E40",
	violet7 = "#766884",
	violet8 = "#B8ABC5",
	violet9 = "#E2D3EE",

	-- --; Ultramarine #3F00FF
	ultramarine0 = "#554AF5",
	ultramarine1 = "#7F77F2",
	ultramarine2 = "#6D6487",
	ultramarine3 = "#9587DD",
	ultramarine4 = "#787096",
	ultramarine5 = "#16141e",
	-- --; ultramarine6 = "#322E40",
	ultramarine6 = "#2D2C58",
	ultramarine7 = "#6E6884",
	ultramarine8 = "#b0acc5",
	ultramarine9 = "#DBD3EE",

	-- --; Blue #0000FF
	blue0 = "#3237CA",
	blue1 = "#4246BA",
	-- --; blue2 = "#2C30AB",
	blue2 = "#3242A1",
	blue3 = "#526AF3",
	blue4 = "#807f96", -- old faded-blue
	blue5 = "#14141e", -- black2, -- old alt-midnight-blue
	blue6 = "#2E2E40",
	blue7 = "#686984",
	blue8 = "#A1A0C5",
	blue9 = "#D3D7EE",

	-- --; Cerulean #003FFF
	-- --; cerulean0 = "#0e4cd1",
	cerulean0 = "#316CED",
	cerulean1 = "#3f66ba",
	cerulean2 = "#2d4b8c",
	cerulean3 = "#4c7de8",
	cerulean4 = "#738FD7",
	cerulean5 = "#14171e",
	cerulean6 = "#2E3340",
	cerulean7 = "#687184", -- old grayish-blue
	cerulean8 = "#8F97A7",
	cerulean9 = "#C6D5E8",

	-- --; Azure #007FFF
	azure0 = "#0e70d1",
	-- --; azure1 = "#3f7dba", ; old blue
	azure1 = "#3B84CC", -- old blue
	azure2 = "#385A82",
	azure3 = "#4ca6e8", -- old soft-blue
	azure4 = "#53859d", -- old moderate-blue
	azure5 = "#14191e",
	azure6 = "#2E3740",
	azure7 = "#687684",
	azure8 = "#8B9AA7",
	azure9 = "#D3E4F0",

	-- --; Capri #00BFFF
	-- --; TODO: adjust
	capri0 = "#1a9eee",
	capri1 = "#2683b5",
	capri2 = "#1c5f87",
	capri3 = "#41b0f3",
	capri4 = "#91b9c7",
	capri5 = "#1e2528", --black2, --; old midnight-blue
	capri6 = "#2E3940",
	capri7 = "#687A84",
	capri8 = "#98AAB3",
	capri9 = "#D3E6EE",

	-- --; Cyan #00FFFF
	-- --; TODO: #00B7EB
	cyan0 = "#0bc9cf",
	cyan1 = "#57bfc2",
	cyan2 = "#09878b",
	cyan3 = "#6bd9db",
	-- --; TODO:
	-- --; cyan3 = "#68d7f3",
	cyan4 = "#65a0a1",
	-- --; cyan5 = "#142223",
	cyan5 = "#141e1e",
	cyan6 = "#2e3f40",
	cyan7 = "#688384",
	cyan8 = "#A2C5C5",
	cyan9 = "#D3EEEE",

	-- --; Teal #00A89D
	teal0 = "#0D9C94",
	teal1 = "#4d9391",
	teal2 = "#1D5E5C",
	teal3 = "#49bdb0",
	teal4 = "#80bcb6",
	teal5 = "#141e1d",
	teal6 = "#2E403F",
	teal7 = "#5F7A79",
	teal8 = "#a4bab9",
	teal9 = "#D3EEEC",

	-- --; Aquamarine #00FFBF
	aquamarine0 = "#0ed49b",
	aquamarine1 = "#47ba99",
	aquamarine2 = "#40826d",
	aquamarine3 = "#68f3ca",
	aquamarine4 = "#709688",
	aquamarine5 = "#141e1b",
	aquamarine6 = "#2E403B",
	aquamarine7 = "#68847C",
	aquamarine8 = "#A7C2BA",
	aquamarine9 = "#D3EEE6",

	-- --; Spring green #00FF7F
	spring_green0 = "#2ae186",
	spring_green1 = "#35BF88",
	spring_green2 = "#39855f", -- dark
	spring_green3 = "#65E6A7",
	spring_green4 = "#5D8272", -- faded
	spring_green5 = "#141E1A",
	spring_green6 = "#2E4038", -- old midnight
	spring_green7 = "#688476",
	spring_green8 = "#90aea1",
	spring_green9 = "#D4EEE3",

	-- --; Erin #00FF3F
	erin0 = "#26e356",
	erin1 = "#48ca69",
	erin2 = "#39854C",
	erin3 = "#68f385",
	erin4 = "#597a64",
	erin5 = "#141e17",
	erin6 = "#2E4032",
	erin7 = "#526156",
	erin8 = "#A8CFB6",
	erin9 = "#D3EEDB",

	-- --; Green #00FF00
	green0 = "#21e121",
	green1 = "#47cc47",
	green2 = "#18a318",
	--; green3 = "#61e361",
	green3 = "#7CF083",
	green4 = "#73c66c",
	--; green5 = "#111C11",
	green5 = "#141e14",
	green6 = "#2E402E",
	green7 = "#688468",
	green8 = "#abc6a8",
	green9 = "#D3EED3",

	-- --; Harlequin #3FFF00
	harlequin0 = "#58f021",
	harlequin1 = "#6FC550",
	harlequin2 = "#37A111",
	harlequin3 = "#91f368",
	harlequin4 = "#60A148",
	harlequin5 = "#161E14",
	harlequin6 = "#33402E",
	harlequin7 = "#6F8468",
	harlequin8 = "#b0c6a8",
	harlequin9 = "#DBEED3",

	-- --; Chartreuse #7FFF00
	chartreuse0 = "#88ee1a",
	chartreuse1 = "#92c550",
	chartreuse2 = "#5ba111",
	chartreuse3 = "#9de346",
	chartreuse4 = "#7fa148",
	chartreuse5 = "#161E0D",
	chartreuse6 = "#38402e",
	chartreuse7 = "#788468",
	chartreuse8 = "#afbaa2",
	chartreuse9 = "#E2EED3",

	-- --; Lime #BFFF00
	lime0 = "#aadc13",
	lime1 = "#a8c749",
	lime2 = "#82a80e",
	lime3 = "#c7ee53",
	lime4 = "#b9c791",
	lime5 = "#1B210E",
	lime6 = "#3B402E",
	lime7 = "#7D8468",
	lime8 = "#b5baa4",
	lime9 = "#EAEED3",
}

M.aurora = {
	foreground = M.palette.white1, --e6e6e8
	background = M.palette.azure5,

	cursor_fg = M.palette.white1,
	cursor_bg = M.palette.white4,
	cursor_border = M.palette.azure5,

	selection_fg = M.palette.azure5,
	selection_bg = M.palette.white1,

	-- scrollbar_thumb =

	split = M.palette.lime0,

	ansi = {},
	brights = {},
	indexed = {},
}
return M
