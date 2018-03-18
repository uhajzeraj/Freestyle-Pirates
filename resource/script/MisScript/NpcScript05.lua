--------------------------------------------------------------------------
--									--
--									--
--		NPCScript05.lua Created by knight.gong 2005.7.12.	--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading NPCScript05.lua" )




function r_talkPet ()

	Talk( 1, "Reika: Hi! I am Pet Mall, Reika. I love pets and everything about them, take a look at my collection. Remember to check all the 3 tabs!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
--	Weapon(	0183	)--Fairy of Life
--	Weapon(	0184	)--Fairy of Darkness
--	Weapon(	0185	)--Fairy of Virtue
--	Weapon(	0186	)--Fairy of Kudos
--	Weapon(	0187	)--Fairy of Faith
--	Weapon(	0188	)--Fairy of Valor
--	Weapon(	0189	)--Fairy of Hope
--	Weapon(	0190	)--Fairy of Woe
--	Weapon(	0191	)--Fairy of Love
--	Weapon(	0199	)--Fairy of Heart
--	Weapon(	0680	)--Mordo
--	Weapon(	0231	)--Fairy of Luck
--	Weapon(	0232	)--Fairy of Strenght
--	Weapon(	0233	)--Fairy of Constitution
--	Weapon(	0234	)--Fairy of Spirit
--	Weapon(	0235	)--Fairy of Accuracy
--	Weapon(	0236	)--Fairy of Agility
--	Weapon(	0237	)--Fairy of Evil
--	Weapon(	0681	)--Mordo Junior
--	Weapon(	2900	)--Monster Scroll
	Defence(	0227	)--Fairy Ration
	Defence(	2312	)--Auto Ration
	Defence(	0578	)--Fruit of Growth
	Defence(	0222	)--Snow Dragon Fruit
	Defence(	0276	)--Great Snow Dragon Fruit
	Defence(	0223	)--Icepire Plum
	Defence(	0277	)--Great Icepire Plum
	Defence(	0224	)--Zephyr Fish Floss
	Defence(	0278	)--Great Zephyr Fish Floss
	Defence(	0225	)--Argent Mango
	Defence(	0279	)--Great Argent Mango
	Defence(	0226	)--Shaitan Biscuit
	Defence(	0280	)--Great Shaitan Biscuit
	Defence(	0244	)--Standard Protection
	Defence(	0247	)--Standard Berserk
	Defence(	0250	)--Standard Magic
	Defence(	0253	)--Standard Recover
	Defence(	0260	)--Standard Meditation
--	Defence(	0609	)--Expert Fairy Possession
--	Defence(	1056	)--Standard Pet Manufacturing
--	Defence(	1059	)--Standard Pet Crafting
--	Defence(	1062	)--Standard Pet Analyze
--	Defence(	1065	)--Standard Pet Cooking
--	Defence(	0612	)--Expert Self Destruct
	Defence(	3918	)--Demonic Fruit of Acidity
	Defence(	3919	)--Demonic Fruit of Courage
	Defence(	3920	)--Demonic Fruit of Strength
	Defence(	3921	)--Demonic Fruit of Intellect
	Defence(	3922	)--Demonic Fruit of Energy
	Defence(	3924	)--Demonic Fruit of Aberrant
	Defence(	3925	)--Demonic Fruit of Mystery
	Defence(	0262	)--Fairy Box
	Other(	1037	)--Skill-Defecate
	Other(	1038	)--Skill-Undergarment
	Other(	1039	)--Skill-Garment
	Other(	1129	)--Skill-Coin Shower
	Other(	1130	)--Skill-Fool
	Other(	1131	)--Skill-Snooty
	Other(	1132	)--Skill-Dumb
	Other(	1133	)--Skill-Dumb

end 

function r_talkMall ()

	Talk( 1, "Vitorian: Hi! I am Item Mall, Vitorian. I Just opened this store, i hope you enjoy. Remember to check all the 3 tabs!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Exchange Unique Necklace Voucher", JumpPage, 2 )
	Text( 1, "Exchange Unique Ring Voucher", JumpPage, 3 )
	Text( 1, "Exchange Unique Coral Voucher", JumpPage, 4 )
	Text( 1, "Nothing...",  CloseTalk)

	Talk( 2, "Vitorian: To exchange the Unique Necklace Voucher, you need 30 Pink Pearls." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3363, 30 )
	TriggerAction( 1, TakeItem, 3363, 30 )
	TriggerAction( 1, GiveItem, 581, 1, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Exchange now", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Go back", JumpPage, 1 )

	Talk( 3, "Vitorian: To exchange the Unique Ring Voucher, you need 20 Black Pearls." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3362, 20 )
	TriggerAction( 1, TakeItem, 3362, 20 )
	TriggerAction( 1, GiveItem, 580, 1, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Exchange now", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Go back", JumpPage, 1 )

	Talk( 4, "Vitorian: To exchange the Unique Coral Voucher, you need 15 Fish Spike." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 4537, 15 )
	TriggerAction( 1, TakeItem, 4537, 15 )
	TriggerAction( 1, GiveItem, 582, 1, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 4, "Exchange now", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Go back", JumpPage, 1 )


	Talk( 5, "Vitorian: You don't have enought itens to exchange!" )
	Text( 5, "Go back", JumpPage, 1 )


	InitTrade()
--	Weapon(	0992	)--Growth Fast Food
--	Weapon(	0993	)--Super Booster
--	Weapon(	1078	)--Steam Bun
--	Weapon(	1079	)--Bun
--	Weapon(	1080	)--Biscuit
--	Weapon(	1082	)--Fried Dough
--	Weapon(	1083	)--Spring Roll
--	Weapon(	1084	)--Maiden Wine
--	Weapon(	1085	)--Scholar Wine
--	Weapon(	1087	)--Mao Wine
--	Weapon(	1088	)--Dukan Wine
--	Weapon(	1089	)--Ginseng Wine
--	Weapon(	1090	)--Tiger Bone Tonic
--	Weapon(	3039	)--Level Pushing Machine
--	Weapon(	3037	)--Warm Dumpling
--	Weapon(	3043	)--Egg Yolk Dumpling
--	Weapon(	3044	)--Bean Paste Dumpling
--	Weapon(	3045	)--Sticky Rice Dumpling
--	Weapon(	1024	)--Super Rechargeable Battery
--	Weapon(	3844	)--Heaven's Berry
--	Weapon(	1128	)--Mini Amplifier of Strive
--	Weapon(	3094	)--Amplifier of Strive
--	Weapon(	3095	)--Hi-Amplifier of Strive
--	Weapon(	3845	)--Charmed Berry
--	Weapon(	3096	)--Amplifier of Luck
--	Weapon(	3097	)--Hi-Amplifier of Luck
--	Weapon(	0849	)--Party EXP Fruit
--	Weapon(	3105	)--Skating Potion
--	Weapon(	3104	)--Elixir of Soul
--	Weapon(	3102	)--Elixir of Bull
--	Weapon(	3101	)--Elixir of Monkey
--	Weapon(	3103	)--Elixir of Eagle
--	Weapon(	3100	)--Elixir of Lion
--	Weapon(	3342	)--Lantern
--	Weapon(	3339	)--Acceleration Potion
--	Weapon(	3046	)--Power Sail
--	Weapon(	3909	)--Gyoza
--	Weapon(	3099	)--SP Holy Water
--	Weapon(	3098	)--Constitution Recovery Flask
--	Weapon(	3047	)--Voodoo Puppet
--	Weapon(	0852	)--Full Body Armor
--	Weapon(	3106	)--Battleship Armor
--	Weapon(	0851	)--Battle Array
--	Weapon( 0850    )--Weightless Potion
--	Defence(	0885	)--Refining Gem
--	Defence(	0878	)--Fiery Gem
--	Defence(	0879	)--Furious Gem
--	Defence(	0880	)--Explosive Gem
--	Defence(	0881	)--Lustrious Gem
--	Defence(	0882	)--Glowing Gem
--	Defence(	0883	)--Shining Gem
--	Defence(	0884	)--Shadow Gem
--	Defence(	0887	)--Spirit Gem
--	Defence(	1012	)--Gem of Soul
--	Defence(	0860	)--Gem of Wind
--	Defence(	0861	)--Gem of Striking
--	Defence(	0862	)--Gem of Colossus
--	Defence(	0863	)--Gem of Rage
--	Defence(	0864	)--Eye of Black Dragon
--	Defence(	0865	)--Soul of Black Dragon
--	Defence(	0866	)--Heart of Black Dragon
--	Defence(	5750	)--Yellow Jade
--	Defence(	5751	)--Red Jade
--	Defence(	5752	)--Green Jade
--	Defence(	5771	)--Chiatan's Aura
--	Defence(	5772	)--Lock's Hit
--	Defence(	5773	)--Bing's Dodging
--	Defence(	5774	)--Feng's Defense
--	Defence(	5775	)--Shark's Strengthening
	Other(	0141	)--Ebony Dragon Wings
	Other(	0906	)--Devil Wings
	Other(	0937	)--Angelic Wings
	Other(	0142	)--Rainbow Wings
	Other(	0905	)--Dragon Wings
	Other(	0904	)--Vampiric Wings
	Other(	0935	)--Elven Wings
	Other(	0936	)--Butterfly Wings
	Other(	3088	)--28 Slot Inventory
	Other(	3089	)--32 Slot Inventory
	Other(	3090	)--36 Slot Inventory
	Other(	3091	)--40 Slot Inventory
	Other(	3092	)--44 Slot Inventory
	Other(	3093	)--48 Slot Inventory
	Other(	0207	)--Gold Axe
	Other(	0208	)--Gold Pickaxe
	Other(	3908	)--Alloy Pickaxe
	Other(	3108	)--Gold Alloy Pickaxe
--	Other(	3114	)--Sea Weed Killer
	Other(	3910	)--Super Candy Stick
	Other(	2625	)--Stone Catalyst
	Other(	2630	)--Food Catalyst 
	Other(	2634	)--Special Catalyst
	Other(	2635	)--Bone Catalyst
	Other(	2636	)--Plant Catalyst
	Other(	2637	)--Fur Catalyst
	Other(	2638	)--Liquid Catalyst
	Other(	2639	)--Wood Catalyst

end 


function r_talkTic ()

	Talk( 1, "Sue: Hi! I am Ticket Producer, Sue. I Just opened this store, I hope you enjoy!" )
	Text( 1, "Buy Tickets", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)
	

	InitTrade()
	Other(	3048	)--Pass to Thundoria Castle
	Other(	3049	)--Pass to Thundoria Harbor
	Other(	3050	)--Pass to Demonic World
	Other(	3051	)--Pass to Andes Forest Haven
	Other(	3052	)--Pass to Oasis Haven
	Other(	3053	)--Pass to Icespire Haven
	Other(	3073	)--Pass to Abandon Mine 1
	Other(	3056	)--Pass to Abandoned Mine 2
	Other(	3057	)--Pass to Silver Mine 2
	Other(	3058	)--Pass to Silver Mine 3
	Other(	3055	)--Pass to Barren Cavern
	Other(	3054	)--Pass to Lone Tower 1
	Other(	3059	)--Pass to Lone Tower 2
	Other(	3060	)--Pass to Lone Tower 3
	Other(	3070	)--Pass to Lone Tower 4
	Other(	3071	)--Pass to Lone Tower 5
	Other(	3072	)--Pass to Lone Tower 6
--	Other(	3828	)--Ticket to Thundoria Castle
--	Other(	3829	)--Ticket to Thundoria Harbor
--	Other(	3830	)--Ticket to Demonic World
--	Other(	3831	)--Ticket to Andes Forest Haven
--	Other(	3832	)--Ticket to Oasis Haven
--	Other(	3833	)--Ticket to Icespire Haven
--	Other(	3834	)--Ticket to Lone Tower 1
--	Other(	3839	)--Ticket to Lone Tower 2
--	Other(	3840	)--Ticket to Lone Tower 3
--	Other(	3841	)--Ticket to Lone Tower 4
--	Other(	3842	)--Ticket to Lone Tower 5
--	Other(	3843	)--Ticket to Lone Tower 6
--	Other(	3835	)--Ticket to Barren Cavern
--	Other(	3847	)--Ticket to Abandon Mine 1
--	Other(	3836	)--Ticket to Abandoned Mine 2
--	Other(	3837	)--Ticket to Silver Mine 2
--	Other(	3838	)--Ticket to Silver Mine 3
--	Other(	0332	)--Ticket to Spring
	Other(	2445	)--Caribbean Tour Ticket
	Other(	3076	)--Pass to Spring Town
	Other(	0563	)--Pass to Summer
	Other(	0583	)--Pass to Autumn
--	Other(	2446	)--Pass to Skeletar
	Other(	2491	)--Pass to Naval Base
	Other(	2844	)--Pass to Abaddon 4
	Other(	2447	)--Pass to Skeletar Isle?
	
end 

function r_talkWeaAPP ()

	Talk( 1, "Foxy: Hi! I am Apparel Tailor, Foxy. Take a look at my apparels, and remember to check all 3 tabs!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
	Weapon(	5001	)--Sword of Azure Flame
	Weapon(	5002	)--Sword of Crimson Thunder
	Weapon(	5007	)--Sword of Crimson Flame
	Weapon(	5008	)--Sword of Azure Thunder
--	Weapon(	5070	)--Sword of Cadaver
	Weapon(	5208	)--August Sword Burning
	Weapon(	5213	)--August Sword Frozen
	Weapon(	5099	)--Falchion
	Weapon(	5100	)--Long Falchion
	Weapon(	5101	)--Katana
--	Weapon(	5102	)--Tulwar
	Weapon(	5103	)--Crystal Falchion
	Weapon(	5104	)--Phantom Falchion
	Weapon(	5105	)--Nefarious Falchion
--	Weapon(	5074	)--Dagger of Cadaver
	Weapon(	5283	)--Barborosa's Knife
	Weapon(	5284	)--Barborosa's Fork
	Weapon(	5449	)--Study Book Lance
	Weapon(	5071	)--Greatsword of Cadaver
	Weapon(	5209	)--August Greataxe of Zest
	Weapon(	5214	)--August Greataxe of Hone
	Weapon(	5009	)--Great Hammer of Hone
	Weapon(	5003	)--Great Hammer of Zest
	Weapon(	5277	)--Langa's Cleaning Brush
	Weapon(	5450	)--Study Book Carsise
	Weapon(	5072	)--Firegun of Cadaver
	Weapon(	5210	)--August Firegun Victorian
	Weapon(	5215	)--August Firegun Vinyon
	Weapon(	5005	)--Vinyon
	Weapon(	5011	)--Victorian
	Weapon(	5286	)--Fine Crossbow
	Weapon(	5279	)--Goddess of Vengence
	Weapon(	5281	)--Pseudo Air Cannon
	Weapon(	5448	)--Study Bow
	Weapon(	5006	)--Rattle Drum of the Burning Crescent
	Weapon(	5012	)--Rattle Drum of the Frozen Crescent
	Weapon(	5073	)--Staff of Cadaver
	Weapon(	5211	)--August Staff Burning
	Weapon(	5216	)--August Staff Frozen
	Weapon(	5280	)--Soup Spoon
	Weapon(	5451	)--Study Staff 1
	Weapon(	5452	)--Study Staff 2
	Weapon(	5454	)--Study Sticks Phyllis
	Weapon(	5455	)--Study Sticks Ami
	Weapon(	5212	)--August Dagger Frozen
	Weapon(	5217	)--August Dagger Burning
	Weapon(	5004	)--Blade of the Frozen Crescent
	Weapon(	5010	)--Blade of Burning Crescent
	Weapon(	5282	)--Oriental Mystic Chopsticks
	Weapon(	5453	)--Study Sticks Lance
	Weapon(	5276	)--Foldable Chair
	Weapon(	5278	)--Branch of Defecate
	Weapon(	5285	)--Matchstick Granny's Pan
--	Defence(	5472	)--Lance Yahoo Hat
--	Defence(	5476	)--Lance Resident Cover Hat
--	Defence(	5480	)--Lance Ma Yongshi Days Helmet
--	Defence(	5484	)--Lance Icy Dragon Helmet
--	Defence(	5473	)--Carsise Yahoo Hat
--	Defence(	5477	)--Carsise Resident Cover Hat
--	Defence(	5481	)--Carsise Ma Yongshi Days Helmet
--	Defence(	5485	)--Carsise Icy Dragon Helmet
--	Defence(	5474	)--Phyllis Yahoo Hat
--	Defence(	5478	)--Phyllis Resident Cover Hat
--	Defence(	5482	)--Phyllis Ma Yongshi Days Helmet
--	Defence(	5486	)--Phyllis Icy Dragon Helmet
--	Defence(	5475	)--Ami Yahoo Hat
--	Defence(	5479	)--Ami Resident Cover Hat
--	Defence(	5483	)--Ami Ma Yongshi Days Helmet
--	Defence(	5487	)--Ami Icy Dragon Helmet
--	Defence(	5118	)--Wizard Hat
--	Defence(	5126	)--Flyboy Cap
--	Defence(	5114	)--Crazed Cowboy
--	Defence(	5106	)--Clowny Cap
--	Defence(	5150	)--Cowboy Hat
--	Other(	0141	)--Ebony Dragon Wings
--	Other(	0906	)--Devil Wings
--	Other(	0937	)--Angelic Wings
--	Other(	0142	)--Rainbow Wings
--	Other(	0905	)--Dragon Wings
--	Other(	0904	)--Vampiric Wings
--	Other(	0935	)--Elven Wings
--	Other(	0936	)--Butterfly Wings
--	Other(	4274	)--Light Ice-covered Sword
--	Other(	4275	)--Heavy Ice-covered Sword
--	Other(	4276	)--Ice-covered Snow Spike
--	Other(	4277	)--Ice-covered Evil Spear
--	Other(	4278	)--Ice-covered Enchanted Bow
--	Other(	4279	)--Ice-covered Fledgy Staff
--	Other(	4280	)--Ice-covered Frosted Staff
--	Other(	4281	)--Ice-covered Fury SnowBlade
--	Other(	4282	)--Ice-covered Holy Snow Shield
--	Other(	5816	)--
--	Other(	5817	)--
--	Other(	5818	)--
--	Other(	5819	)--
--	Other(	5820	)--
--	Other(	5821	)--
--	Other(	5822	)--
--	Other(	5823	)--
--	Other(	5824	)--
--	Other(	3667	)--
--	Other(	3668	)--
--	Other(	2981	)--
--	Other(	2577	)--Hardin's Power
--	Other(	2578	)--Darkness Power
--	Other(	2579	)--Hell Feather
--	Other(	2580	)--Soul of Asura
--	Other(	2581	)--Styx's Demonizing
--	Other(	2582	)--Spirit Crystal of Abyss
--	Other(	2405	)--
--	Other(	2406	)--
--	Other(	2407	)--
--	Other(	2494	)--
--	Other(	2497	)--
--	Other(	2498	)--
--	Other(	2506	)--
--	Other(	2507	)--
--	Other(	2508	)--
--	Other(	2509	)--
--	Other(	2510	)--
--	Other(	2511	)--
--	Other(	2512	)--
--	Other(	2513	)--
--	Other(	2514	)--
--	Other(	2308	)--
--	Other(	2309	)--
--	Other(	2310	)--
--	Other(	2311	)--
--	Other(	2316	)--
--	Other(	2317	)--
--	Other(	2318	)--
--	Other(	2319	)--
--	Other(	2320	)--
--	Other(	2321	)--
--	Other(	2322	)--
--	Other(	2345	)--
--	Other(	2346	)--
--	Other(	2347	)--
--	Other(	2397	)--
--	Other(	2398	)--
--	Other(	2399	)--
--	Other(	2400	)--
--	Other(	2401	)--
--	Other(	2402	)--
--	Other(	1862	)--
--	Other(	0085	)--
--	Other(	0086	)--
--	Other(	0087	)--
--	Other(	0090	)--
--	Other(	0091	)--
--	Other(	0092	)--
--	Other(	0093	)--
--	Other(	0094	)--
--	Other(	0095	)--
--	Other(	0096	)--

end 



function r_talkLanAPP ()

	Talk( 1, "Joshua: Hi! I am Apparel Tailor, Joshua. Take a look at my apparels!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
	Defence(	5013	)--Robe of the Chilling Heart
	Defence(	5021	)--Gloves of the Chilling Heart
	Defence(	5029	)--Boots of the Chilling Heart
	Defence(	5017	)--Robe of the Frozen Heart
	Defence(	5025	)--Gloves of the Frozen Heart
	Defence(	5033	)--Boots of the Frozen Heart
	Defence(	5041	)--Armor of Catacomb
	Defence(	5045	)--Gauntlets of Catacomb
	Defence(	5049	)--Greaves of Catacomb
	Defence(	5057	)--Armor of Buccaneer
	Defence(	5061	)--Gauntlets of Buccaneer
	Defence(	5065	)--Greaves of Buccaneer
	Defence(	5075	)--Leather Vest
	Defence(	5076	)--Leather Gloves
	Defence(	5077	)--Leather Boots
	Defence(	5078	)--Warrior Frock
	Defence(	5079	)--Warrior Gloves
	Defence(	5080	)--Warrior Boots
	Defence(	5119	)--Straw Shirt
	Defence(	5120	)--Straw Gloves
	Defence(	5121	)--Straw Shoes
	Defence(	5127	)--Brutal Chef Coat
	Defence(	5128	)--Brutal Chef Gloves
	Defence(	5129	)--Brutal Chef Boots
	Defence(	5154	)--Tiger Armor of Cavalry
	Defence(	5155	)--Tiger Gauntlets of Cavalry
	Defence(	5156	)--Tiger Greaves of Cavalry
	Defence(	5157	)--Capricious Robe of Dragon
	Defence(	5158	)--Capricious Gloves of Dragon
	Defence(	5159	)--Capricious Boots of Dragon
	Defence(	5160	)--Ember Armor of Caesar
	Defence(	5161	)--Ember Gauntlets of Caesar
	Defence(	5162	)--Ember Greaves of Caesar
	Defence(	5221	)--Lance Dark Royal Robe
	Defence(	5222	)--Lance Dark Royal Gloves
	Defence(	5223	)--Lance Dark Royal Boots
	Defence(	5224	)--Lance Priest Robe
	Defence(	5225	)--Lance Priest Gloves
	Defence(	5226	)--Lance Priest Boots
--	Defence(	5341	)--Lance Aries Armor
--	Defence(	5342	)--Lance Aries Gauntlets
--	Defence(	5343	)--Lance Aries Greaves
	Defence(	5488	)--Violaceous Dragon Armor
	Defence(	5489	)--Violaceous Dragon Gloves
	Defence(	5490	)--Violaceous Dragon Boots
	Defence(	5501	)--Amber Kylin Armor
	Defence(	5502	)--Amber Kylin Gloves
	Defence(	5503	)--Amber Kylin Boots
	Defence(	5303	)--Lance Romantic Shirt
	Defence(	5304	)--Lance Romantic Gloves
	Defence(	5305	)--Lance Romantic Boots
	Defence(	5404	)--Lance HighSchool Hat
	Defence(	5405	)--Lance HighSchool Robe
	Defence(	5406	)--Lance HighSchool Boots
	Defence(	5432	)--Lance School Suit
	Defence(	5433	)--Lance School Boots
	Defence(	5227	)--Lance Bruce Tights
	Defence(	5228	)--Lance Bruce Gloves
	Defence(	5229	)--Lance Bruce Shoes
	Defence(	5422	)--Lance Romantic Pas Robe
	Defence(	5423	)--Lance Romantic Pas Shoes
	Defence(	5436	)--Lance Romantic Pas White Gloves
	Defence(	5440	)--Lance Romantic Pas Blue Gloves
	Defence(	5444	)--Lance Romantic Pas Black Gloves
	Other(	5122	)--Musketeer Hat
	Other(	5123	)--Tri-Blader Shirt
	Other(	5124	)--Tri-Blader Gloves
	Other(	5125	)--Tri-Blader Boots
	Other(	3900	)--Christmas Cap
	Other(	5264	)--Lance Christmas Shirt
	Other(	5265	)--Lance Christmas Gloves
	Other(	5266	)--Lance Christmas Boots
	Other(	5220	)--Crimson Gold Plume
	Other(	5205	)--Royal Major Vest
	Other(	5206	)--Royal Major Gloves
	Other(	5207	)--Royal Major Boots
	Other(	5287	)--Lance Fortune Cap
	Other(	5288	)--Lance Fortune Robe
	Other(	5289	)--Lance Fortune Gloves
	Other(	5290	)--Lance Fortune Shoes
	Other(	5315	)--Lance Piggy Beret
	Other(	5316	)--Lance Piggy Shirt
	Other(	5317	)--Lance Piggy Gloves
	Other(	5318	)--Lance Piggy Boots
--	Other(	5356	)--Lance Betrayal of Taurus
--	Other(	5357	)--Lance Loneliness of Taurus
--	Other(	5358	)--Lance Touch of Taurus
--	Other(	5359	)--Lance Flowing Sand of Taurus
--	Other(	5372	)--Lance Betrayal of Gemini
--	Other(	5373	)--Lance Loneliness of Gemini
--	Other(	5374	)--Lance Touch of Gemini
--	Other(	5375	)--Lance Flowing Sand of Gemini
	Other(	5388	)--Lance Street Love Hat
	Other(	5389	)--Lance Street Love Robe
	Other(	5390	)--Lance Street Love Gloves
	Other(	5391	)--Lance Street Love Shoes
--	Other(	5456	)--Lance Cancer Cap
--	Other(	5457	)--Lance Cancer Armor
--	Other(	5458	)--Lance Cancer Gauntlets
--	Other(	5459	)--Lance Cancer Greaves
	Other(	5521	)--Lance Vampire Hat
	Other(	5522	)--Lance Vampire Suit
	Other(	5523	)--Lance Vampire Gloves
	Other(	5524	)--Lance Vampire Shoes
	Other(	5537	)--Lance Black Leather Hat
	Other(	5538	)--Lance Trenchcoat Suit
	Other(	5539	)--Lance Black Leather Gloves
	Other(	5540	)--Lance Black Leather Shoes
	Other(	5553	)--Lance Shinigami Hat
	Other(	5554	)--Lance Shinigami Robe
	Other(	5555	)--Lance Shinigami Gloves
	Other(	5556	)--Lance Shinigami Shoes
	Other(	5569	)--Lance Superman Hat
	Other(	5570	)--Lance Superman Suit
	Other(	5571	)--Lance Superman Gloves
	Other(	5572	)--Lance Superman Shoes
	Other(	5577	)--Lance Ninja Hat
	Other(	5578	)--Lance Ninja Suit
	Other(	5579	)--Lance Ninja Gloves
	Other(	5580	)--Lance Ninja Shoes
	Other(	5593	)--Lance Caribbean Hat
	Other(	5594	)--Lance Caribbean Shirt
	Other(	5595	)--Lance Caribbean Gloves
	Other(	5596	)--Lance Caribbean Shoes
	Other(	5651	)--Lance Chinese New Year Hat
	Other(	5652	)--Lance Chinese New Year Suit
	Other(	5653	)--Lance Chinese New Year Gloves
	Other(	5654	)--Lance Chinese New Year Shoes
	Other(	5661	)--Lance Bloodmoon Helmet
	Other(	5662	)--Lance Bloodmoon Armor
	Other(	5663	)--Lance Bloodmoon Gloves
	Other(	5664	)--Lance Bloodmoon Boots
	Other(	5677	)--Lance Wild West Cap
	Other(	5678	)--Lance Wild West Robe
	Other(	5679	)--Lance Wild West Gloves
	Other(	5680	)--Lance Wild West Boots

end 



function r_talkCarAPP ()

	Talk( 1, "Rubus: Hi! I am Apparel Rubus, Rubus. Take a look at my apparels!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
	Defence(	5014	)--Modern Caveman Robe
	Defence(	5022	)--Modern Caveman Gloves
	Defence(	5030	)--Modern Caveman Boots
	Defence(	5018	)--Wild Caveman Robe
	Defence(	5026	)--Wild Caveman Gloves
	Defence(	5034	)--Wild Caveman Boots
	Defence(	5042	)--Torso of Catacomb
	Defence(	5046	)--Gage of Catacomb
	Defence(	5050	)--Sandals of Catacomb
	Defence(	5058	)--Torso of Buccaneer
	Defence(	5062	)--Gage of Buccaneer
	Defence(	5066	)--Sandals of Buccaneer
	Defence(	5084	)--Seaman Vest
	Defence(	5085	)--Seaman Gloves
	Defence(	5086	)--Seaman Boots
	Defence(	5087	)--Shark Hide Armor
	Defence(	5088	)--Shark Hide Gloves
	Defence(	5089	)--Shark Hide Boots
	Defence(	5090	)--Sailor Vest
	Defence(	5091	)--Sailor Gloves
	Defence(	5092	)--Sailor Boots
	Defence(	5093	)--Navy Vest
	Defence(	5094	)--Navy Gloves
	Defence(	5095	)--Navy Boots
	Defence(	5096	)--Captain's Jacket
	Defence(	5097	)--Captain's Gloves
	Defence(	5098	)--Captain's Boots
	Defence(	5107	)--Bloody Captain Shirt
	Defence(	5108	)--Bloody Captain Gloves
	Defence(	5109	)--Bloody Captain Shoes
	Defence(	5115	)--Smoker Navy Vest
	Defence(	5116	)--Smoker Navy Gloves
	Defence(	5117	)--Smoker Navy Boots
	Defence(	5238	)--Carsise Ebony Armor
	Defence(	5239	)--Carsise Ebony Gloves
	Defence(	5240	)--Carsise Ebony Boots
--	Defence(	5345	)--Carsise Aries Armor
--	Defence(	5346	)--Carsise Aries Gauntlets
--	Defence(	5347	)--Carsise Aries Greaves
	Defence(	5491	)--Violaceous Dragon Armor
	Defence(	5492	)--Violaceous Dragon Gloves
	Defence(	5493	)--Violaceous Dragon Boots
	Defence(	5504	)--Amber Kylin Armor
	Defence(	5505	)--Amber Kylin Gloves
	Defence(	5506	)--Amber Kylin Boots
	Defence(	5039	)--Tattoo of the Burning Dragon
	Defence(	5040	)--Tattoo of the Frozen Dragon
	Defence(	5306	)--Carsise Romantic Shirt
	Defence(	5307	)--Carsise Romantic Gloves
	Defence(	5308	)--Carsise Romantic Boots
	Defence(	5407	)--Carsise HighSchool Hat
	Defence(	5408	)--Carsise HighSchool Robe
	Defence(	5409	)--Carsise HighSchool Boots
	Defence(	5434	)--Carsise School Suit
	Defence(	5435	)--Carsise School Boots
	Defence(	5514	)--Carsise Bruce Tights
	Defence(	5515	)--Carsise Bruce Gloves
	Defence(	5516	)--Carsise Bruce Shoes
	Defence(	5424	)--Carsise Romantic Pas Robe
	Defence(	5425	)--Carsise Romantic Pas Shoes
	Defence(	5437	)--Carsise Romantic Pas White Gloves
	Defence(	5441	)--Carsise Romantic Pas Blue Gloves
	Defence(	5445	)--Carsise Romantic Pas Black Gloves
	Other(	5110	)--Sahara Crocodile Crown
	Other(	5111	)--Sahara Crocodile Vest
	Other(	5112	)--Sahara Crocodile Gloves
	Other(	5113	)--Sahara Crocodile Boots
	Other(	3900	)--Christmas Cap
	Other(	5267	)--Carsise Christmas Shirt
	Other(	5268	)--Carsise Christmas Gloves
	Other(	5269	)--Carsise Christmas Boots
	Other(	5218	)--Summer Storm
	Other(	5195	)--Royal Major Vest
	Other(	5196	)--Royal Major Gloves
	Other(	5197	)--Royal Major Boots
	Other(	5230	)--Carsise Bishop Cap
	Other(	5231	)--Carsise Bishop Robe
	Other(	5232	)--Carsise Bishop Gloves
	Other(	5233	)--Carsise Bishop Boots
	Other(	5234	)--Carsise Ranger Beret
	Other(	5235	)--Carsise Ranger Shirt
	Other(	5236	)--Carsise Ranger Gloves
	Other(	5237	)--Carsise Ranger Boots
	Other(	5291	)--Carsise Fortune Cap
	Other(	5292	)--Carsise Fortune Robe
	Other(	5293	)--Carsise Fortune Gloves
	Other(	5294	)--Carsise Fortune Shoes
	Other(	5319	)--Carsise Piggy Beret
	Other(	5320	)--Carsise Piggy Armor
	Other(	5321	)--Carsise Piggy Gloves
	Other(	5322	)--Carsise Piggy Boots
--	Other(	5360	)--Carsise Betrayal of Taurus
--	Other(	5361	)--Carsise Loneliness of Taurus
--	Other(	5362	)--Carsise Touch of Taurus
--	Other(	5363	)--Carsise Flowing Sand of Taurus
--	Other(	5376	)--Carsise Betrayal of Gemini
--	Other(	5377	)--Carsise Loneliness of Gemini
--	Other(	5378	)--Carsise Touch of Gemini
--	Other(	5379	)--Carsise Flowing Sand of Gemini
	Other(	5392	)--Carsise Busker's Hat
	Other(	5393	)--Carsise Busker's Robe
	Other(	5394	)--Carsise Busker's Gloves
	Other(	5395	)--Carsise Busker's Boots
--	Other(	5460	)--Carsise Cancer Cap
--	Other(	5461	)--Carsise Cancer Armour
--	Other(	5462	)--Carsise Cancer Gloves
--	Other(	5463	)--Carsise Cancer Boots
	Other(	5525	)--Carsise Vampire Hat
	Other(	5526	)--Carsise Vampire Robe
	Other(	5527	)--Carsise Vampire Gloves
	Other(	5528	)--Carsise Vampire Boots
	Other(	5541	)--Carsise Black Leather Hat
	Other(	5542	)--Carsise Trenchcoat Robe
	Other(	5543	)--Carsise Black Leather Gloves
	Other(	5544	)--Carsise Black Leather Boots
	Other(	5557	)--Carsise Shinigami Hat
	Other(	5558	)--Carsise Shinigami Robe
	Other(	5559	)--Carsise Shinigami Gloves
	Other(	5560	)--Carsise Shinigami Boots
	Other(	5573	)--Carsise Superman Hat
	Other(	5574	)--Carsise Superman Suit
	Other(	5575	)--Carsise Superman Gloves
	Other(	5576	)--Carsise Superman Shoes
	Other(	5581	)--Carsise Ninja Hat
	Other(	5582	)--Carsise Ninja Suit
	Other(	5583	)--Carsise Ninja Gloves
	Other(	5584	)--Carsise Ninja Boots
	Other(	5597	)--Carsise Caribbean Hat
	Other(	5598	)--Carsise Caribbean Shirt
	Other(	5599	)--Carsise Caribbean Gloves
	Other(	5600	)--Carsise Caribbean Boots
	Other(	5655	)--Carsise Chinese New Year Hat
	Other(	5656	)--Carsise Chinese New Year Suit
	Other(	5657	)--Carsise Chinese New Year Gloves
	Other(	5658	)--Carsise Chinese New Year Shoes
	Other(	5665	)--Carsise Bloodmoon Helmet
	Other(	5666	)--Carsise Bloodmoon Armor
	Other(	5667	)--Carsise Bloodmoon Gloves
	Other(	5668	)--Carsise Bloodmoon Boots
	Other(	5681	)--Carsise Wild West Cap
	Other(	5682	)--Carsise Wild West Robe
	Other(	5683	)--Carsise Wild West Gloves
	Other(	5684	)--Carsise Wild West Boots

end 



function r_talkPhyAPP ()

	Talk( 1, "Jessica: Hi! I am Apparel Tailor, Jessica. Take a look at my apparels!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
	Defence(	5015	)--Alluring Grand Robe
	Defence(	5023	)--Alluring Grand Gloves
	Defence(	5031	)--Alluring Grand Boots
	Defence(	5019	)--Winter Grand Robe
	Defence(	5027	)--Winter Grand Gloves
	Defence(	5035	)--Winter Grand Boots
	Defence(	5043	)--Coat of Catacomb
	Defence(	5047	)--Gloves of Catacomb
	Defence(	5051	)--Boots of Catacomb
	Defence(	5059	)--Coat of Buccaneer
	Defence(	5063	)--Gloves of Buccaneer
	Defence(	5067	)--Boots of Buccaneer
	Defence(	5075	)--Leather Vest
	Defence(	5076	)--Leather Gloves
	Defence(	5077	)--Leather Boots
	Defence(	5078	)--Warrior Frock
	Defence(	5079	)--Warrior Gloves
	Defence(	5080	)--Warrior Boots
	Defence(	5081	)--Nightmare Vest
	Defence(	5082	)--Nightmare Gloves
	Defence(	5083	)--Nightmare Boots
	Defence(	5084	)--Seaman Vest
	Defence(	5085	)--Seaman Gloves
	Defence(	5086	)--Seaman Boots
	Defence(	5087	)--Shark Hide Armor
	Defence(	5088	)--Shark Hide Gloves
	Defence(	5089	)--Shark Hide Boots
	Defence(	5090	)--Sailor Vest
	Defence(	5091	)--Sailor Gloves
	Defence(	5092	)--Sailor Boots
	Defence(	5093	)--Navy Vest
	Defence(	5094	)--Navy Gloves
	Defence(	5095	)--Navy Boots
	Defence(	5096	)--Captain's Jacket
	Defence(	5097	)--Captain's Gloves
	Defence(	5098	)--Captain's Boots
	Defence(	5151	)--Sexy Coat
	Defence(	5152	)--Sexy Gloves
	Defence(	5153	)--Sexy Boots
	Defence(	5166	)--Tiger Armor of Cavalry
	Defence(	5167	)--Tiger Gauntlets of Cavalry
	Defence(	5168	)--Tiger Greaves of Cavalry
	Defence(	5169	)--Capricious Robe of Dragon
	Defence(	5170	)--Capricious Gloves of Dragon
	Defence(	5171	)--Capricious Boots of Dragon
	Defence(	5172	)--Dark Blue Vest of Fate
	Defence(	5173	)--Dark Blue Gloves of Fate
	Defence(	5174	)--Dark Blue Boots of Fate
--	Defence(	5349	)--Phyllis Aries Forlorn
--	Defence(	5350	)--Phyllis Aries Gauntlets
--	Defence(	5351	)--Phyllis Aries Greaves
	Defence(	5494	)--Violaceous Dragon Coat
	Defence(	5495	)--Violaceous Dragon Gloves
	Defence(	5496	)--Violaceous Dragon Boots
	Defence(	5309	)--Phyllis Romantic Blouse
	Defence(	5310	)--Phyllis Romantic Muffs
	Defence(	5311	)--Phyllis Romantic Shoes
	Defence(	5507	)--Amber Kylin Coat
	Defence(	5508	)--Amber Kylin Gloves
	Defence(	5509	)--Amber Kylin Boots
	Defence(	5410	)--Phyllis HighSchool Hat
	Defence(	5411	)--Phyllis HighSchool Coat
	Defence(	5412	)--Phyllis HighSchool Boots
	Defence(	5416	)--Phyllis School Coat
	Defence(	5417	)--Phyllis School Gloves
	Defence(	5418	)--Phyllis School Boots
	Defence(	5241	)--Phyllis Bruce Tights
	Defence(	5242	)--Phyllis Bruce Gloves
	Defence(	5243	)--Phyllis Bruce Shoes
	Defence(	5426	)--Phyllis Mirable Paradise Robe
	Defence(	5427	)--Phyllis Mirable Paradise Shoes
	Defence(	5438	)--Phyllis Mirable Paradise White Gloves
	Defence(	5442	)--Phyllis Mirable Paradise Blue Gloves
	Defence(	5446	)--Phyllis Mirable Paradise Black Gloves
	Other(	5142	)--Dainty Doll
	Other(	5143	)--Dainty Bodice
	Other(	5144	)--Dainty Gloves
	Other(	5145	)--Dainty Shoes
	Other(	5146	)--Sassy Princess
	Other(	5147	)--Shaitan Princess Bodice
	Other(	5148	)--Shaitan Princess Gloves
	Other(	5149	)--Shaitan Princess Shoes
	Other(	3900	)--Christmas Cap
	Other(	5270	)--Phyllis Christmas Shirt
	Other(	5271	)--Phyllis Christmas Gloves
	Other(	5272	)--Phyllis Christmas Boots
	Other(	5219	)--Dynamic Royal
	Other(	5202	)--Royal Major Vest
	Other(	5203	)--Royal Major Gloves
	Other(	5204	)--Royal Major Boots
	Other(	5244	)--Phyllis Wedding Veil
	Other(	5245	)--Phyllis Wedding Gown
	Other(	5246	)--Phyllis Wedding Gloves
	Other(	5247	)--Phyllis Wedding Shoes
	Other(	5248	)--Phyllis Vestal Wrap
	Other(	5249	)--Phyllis Vestal Costume
	Other(	5250	)--Phyllis Vestal Gloves
	Other(	5251	)--Phyllis Vestal Shoes
	Other(	5295	)--Phyllis Fortune Cap
	Other(	5296	)--Phyllis Fortune Robe
	Other(	5297	)--Phyllis Fortune Gloves
	Other(	5298	)--Phyllis Fortune Shoes
	Other(	5323	)--Phyllis Piggy Bonnet
	Other(	5324	)--Phyllis Piggy Blouse
	Other(	5325	)--Phyllis Piggy Gloves
	Other(	5326	)--Phyllis Piggy Boots
--	Other(	5364	)--Phyllis Betrayal of Taurus
--	Other(	5365	)--Phyllis Loneliness of Taurus
--	Other(	5366	)--Phyllis Touch of Taurus
--	Other(	5367	)--Phyllis Flowing Sand of Taurus
--	Other(	5380	)--Phyllis Betrayal of Gemini
--	Other(	5381	)--Phyllis Loneliness of Gemini
--	Other(	5382	)--Phyllis Touch of Gemini
--	Other(	5383	)--Phyllis Flowing Sand of Gemini
	Other(	5396	)--Phyllis Fantasy Hat
	Other(	5397	)--Phyllis Fantasy Robe
	Other(	5398	)--Phyllis Fantasy Gloves
	Other(	5399	)--Phyllis Fantasy Boots
--	Other(	5464	)--Phyllis Cancer Cap
--	Other(	5465	)--Phyllis Cancer Armour
--	Other(	5466	)--Phyllis Cancer Gloves
--	Other(	5467	)--Phyllis Cancer Boots
	Other(	5529	)--Phyllis Vampire Hat
	Other(	5530	)--Phyllis Vampire Armor
	Other(	5531	)--Phyllis Vampire Gloves
	Other(	5532	)--Phyllis Vampire Boots
	Other(	5545	)--Phyllis Black Leather Hat
	Other(	5546	)--Phyllis Trenchcoat Coat
	Other(	5547	)--Phyllis Black Leather Gloves
	Other(	5548	)--Phyllis Black Leather Shoes
	Other(	5561	)--Phyllis Shinigami Hat
	Other(	5562	)--Phyllis Shinigami Robe
	Other(	5563	)--Phyllis Shinigami Gloves
	Other(	5564	)--Phyllis Shinigami Shoes
	Other(	5585	)--Phyllis Ninja Hat
	Other(	5586	)--Phyllis Ninja Suit
	Other(	5587	)--Phyllis Ninja Gloves
	Other(	5588	)--Phyllis Ninja Shoes
	Other(	5601	)--Phyllis Caribbean Hat
	Other(	5602	)--Phyllis Caribbean Shirt
	Other(	5603	)--Phyllis Caribbean Gloves
	Other(	5604	)--Phyllis Caribbean Shoes
	Other(	5659	)--Phyllis Chinese New Year Hat
	Other(	5660	)--Phyllis Chinese New Year Suit
	Other(	5693	)--Phyllis Chinese New Year Gloves
	Other(	5694	)--Phyllis Chinese New Year Shoes
	Other(	5669	)--Phyllis Bloodmoon Helmet
	Other(	5670	)--Phyllis Bloodmoon Armor
	Other(	5671	)--Phyllis Bloodmoon Gloves
	Other(	5672	)--Phyllis Bloodmoon Boots
	Other(	5685	)--Phyllis Wild West Hat
	Other(	5686	)--Phyllis Wild West Robe
	Other(	5687	)--Phyllis Wild West Gloves
	Other(	5688	)--Phyllis Wild West Boots

end 


function r_talkAmiAPP ()

	Talk( 1, "Susi: Hi! I am Apparel Tailor, Susi. Take a look at my apparels!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
	Defence(	5037	)--Country Cap
	Defence(	5016	)--Country Robe
	Defence(	5024	)--Country Gloves
	Defence(	5032	)--Country Boots
	Defence(	5038	)--Carillon Cap
	Defence(	5020	)--Carillon Robe
	Defence(	5028	)--Carillon Gloves
	Defence(	5036	)--Carillon Boots
	Defence(	5056	)--Crown of Catacomb
	Defence(	5044	)--Costume of Catacomb
	Defence(	5048	)--Muffs of Catacomb
	Defence(	5052	)--Waders of Catacomb
	Defence(	5069	)--Crown of Buccaneer
	Defence(	5060	)--Costume of Buccaneer
	Defence(	5064	)--Muffs of Buccaneer
	Defence(	5068	)--Waders of Buccaneer
	Defence(	5130	)--Happy Reindeer Cap
	Defence(	5131	)--Happy Reindeer Costume
	Defence(	5132	)--Happy Reindeer Muffs
	Defence(	5133	)--Happy Reindeer Shoes
	Defence(	5134	)--Shrooms Cap
	Defence(	5135	)--Shrooms Costume
	Defence(	5136	)--Shrooms Muffs
	Defence(	5137	)--Shrooms Shoes
	Defence(	5138	)--Little Bee Cap
	Defence(	5139	)--Little Bee Costume
	Defence(	5140	)--Little Bee Muffs
	Defence(	5141	)--Little Bee Shoes
	Defence(	5178	)--Aliya Mini Cap
	Defence(	5175	)--Aliya Mini Shirt
	Defence(	5176	)--Aliya Mini Gloves
	Defence(	5177	)--Aliya Mini Shoes
	Defence(	5182	)--Sweetie Cap
	Defence(	5179	)--Sweetie Robe
	Defence(	5180	)--Sweetie Gloves
	Defence(	5181	)--Sweetie Shoes
	Defence(	5186	)--Azure Crown of Fairy
	Defence(	5183	)--Azure Robe of Fairy
	Defence(	5184	)--Azure Gloves of Fairy
	Defence(	5185	)--Azure Boots of Fairy
	Defence(	5190	)--Noble Lion Crown
	Defence(	5187	)--Noble Lion Costume
	Defence(	5188	)--Noble Lion Muffs
	Defence(	5189	)--Noble Lion Paw
	Defence(	5194	)--Silk Bunny Cap
	Defence(	5191	)--Silk Bunny Costume
	Defence(	5192	)--Silk Bunny Muffs
	Defence(	5193	)--Silk Bunny Shoes
	Defence(	5260	)--Ami Chibi Cap
	Defence(	5261	)--Ami Chibi Costume
	Defence(	5262	)--Ami Chibi Gloves
	Defence(	5263	)--Ami Chibi Shoes
--	Defence(	5352	)--Ami Aries Diadem
--	Defence(	5353	)--Ami Aries Costume
--	Defence(	5354	)--Ami Aries Muffs
--	Defence(	5355	)--Ami Aries Shoes
	Defence(	5497	)--Violaceous Dragon Diadem
	Defence(	5498	)--Violaceous Dragon Costume
	Defence(	5499	)--Violaceous Dragon Muffs
	Defence(	5500	)--Violaceous Dragon Shoes
	Defence(	5510	)--Amber Kylin Diadem
	Defence(	5511	)--Amber Kylin Costume
	Defence(	5512	)--Amber Kylin Muffs
	Defence(	5513	)--Amber Kylin Shoes
	Defence(	5312	)--Ami Romantic Dress
	Defence(	5313	)--Ami Romantic Gloves
	Defence(	5314	)--Ami Romantic Boots
	Defence(	5413	)--Ami HighSchool Hat
	Defence(	5414	)--Ami HighSchool Costume
	Defence(	5415	)--Ami HighSchool Shoes
	Defence(	5419	)--Ami School Costume
	Defence(	5420	)--Ami School Muffs
	Defence(	5421	)--Ami School Shoes
	Defence(	5517	)--Ami Bruce Tights
	Defence(	5518	)--Ami Bruce Gloves
	Defence(	5519	)--Ami Bruce Shoes
	Defence(	5428	)--Ami Pink Angel Hat
	Defence(	5429	)--Ami Pink Angel Robe
	Defence(	5430	)--Ami Pink Angel Gloves
	Defence(	5431	)--Ami Pink Angel Boots
	Defence(	5439	)--Ami Pink Angel White Gloves
	Defence(	5443	)--Ami Pink Angel Blue Gloves
	Defence(	5447	)--Ami Pink Angel Black Gloves
	Other(	3900	)--Christmas Cap
	Other(	5273	)--Ami Christmas Shirt
	Other(	5274	)--Ami Christmas Gloves
	Other(	5275	)--Ami Christmas Boots
	Other(	5201	)--Royal Major Hat
	Other(	5198	)--Royal Major Vest
	Other(	5199	)--Royal Major Gloves
	Other(	5200	)--Royal Major Boots
	Other(	5252	)--Ami Wedding Veil
	Other(	5253	)--Ami Wedding Gown
	Other(	5254	)--Ami Wedding Gloves
	Other(	5255	)--Ami Wedding Shoes
	Other(	5256	)--Ami Vestal Cap
	Other(	5257	)--Ami Vestal Costume
	Other(	5258	)--Ami Vestal Gloves
	Other(	5259	)--Ami Vestal Shoes
	Other(	5299	)--Ami Fortune Cap
	Other(	5300	)--Ami Fortune Robe
	Other(	5301	)--Ami Fortune Gloves
	Other(	5302	)--Ami Fortune Shoes
	Other(	5327	)--Ami Piggy Cap
	Other(	5328	)--Ami Piggy Costume
	Other(	5329	)--Ami Piggy Muffs
	Other(	5330	)--Ami Piggy Shoes
--	Other(	5368	)--Ami Betrayal of Taurus
--	Other(	5369	)--Ami's Loneliness of Taurus
--	Other(	5370	)--Ami Touch of Taurus
--	Other(	5371	)--Ami Flowing Sand of Taurus
--	Other(	5384	)--Ami Betrayal of Gemini
--	Other(	5385	)--Ami's Loneliness of Gemini
--	Other(	5386	)--Ami Touch of Gemini 
--	Other(	5387	)--Ami Flowing Sand of Gemini
	Other(	5400	)--Ami Hunny Hat
	Other(	5401	)--Ami Hunny Rope
	Other(	5402	)--Ami Hunny Gloves
	Other(	5403	)--Ami Hunny Boots
--	Other(	5468	)--Ami Cancer Cap
--	Other(	5469	)--Ami Cancer Armour
--	Other(	5470	)--Ami Cancer Gloves
--	Other(	5471	)--Ami Cancer Boots
	Other(	5533	)--Ami Vampire Hat
	Other(	5534	)--Ami Vampire Costume
	Other(	5535	)--Ami Vampire Muffs
	Other(	5536	)--Ami Vampire Shoes
	Other(	5549	)--Ami Black Leather Hat
	Other(	5550	)--Ami Trenchcoat Costume
	Other(	5551	)--Ami Black Leather Gloves
	Other(	5552	)--Ami Black Leather Shoes
	Other(	5565	)--Ami Shinigami Hat
	Other(	5566	)--Ami Shinigami Robe
	Other(	5567	)--Ami Shinigami Gloves
	Other(	5568	)--Ami Shinigami Shoes
	Other(	5589	)--Ami Ninja Hat
	Other(	5590	)--Ami Ninja Suit
	Other(	5591	)--Ami Ninja Gloves
	Other(	5592	)--Ami Ninja Shoes
	Other(	5605	)--Ami Caribbean Hat
	Other(	5606	)--Ami Caribbean Shirt
	Other(	5607	)--Ami Caribbean Gloves
	Other(	5608	)--Ami Caribbean Shoes
	Other(	5695	)--Ami Chinese New Year Hat
	Other(	5696	)--Ami Chinese New Year Suit
	Other(	5697	)--Ami Chinese New Year Gloves
	Other(	5698	)--Ami Chinese New Year Shoes
	Other(	5673	)--Ami Bloodmoon Helmet
	Other(	5674	)--Ami Bloodmoon Armor
	Other(	5675	)--Ami Bloodmoon Gloves
	Other(	5676	)--Ami Bloodmoon Boots
	Other(	5689	)--Ami Wild West Diadem
	Other(	5690	)--Ami Wild West Robe
	Other(	5691	)--Ami Wild West Gloves
	Other(	5692	)--Ami Wild West Boots
end 

function r_talkJOB ()

	Talk( 1, "Lucius: Hi! I am Job Changer, Lucius. Let's see what i can do for you." )
	Text( 1, "First Job Promotion", JumpPage, 2)
	Text( 1, "Second Job Promotion", JumpPage, 3)
	Text( 1, "Nothing...",  CloseTalk)


	Talk( 2, "Lucius: Choose one of the following First Job Promotions." )
	Text( 2, "Swordsman Promotion", JumpPage, 4 )
	Text( 2, "Hunter Promotion", JumpPage, 5 )
	Text( 2, "Herbalist Promotion", JumpPage, 6 )
	Text( 2, "Explorer Promotion", JumpPage, 7 )
	Text( 2, "Go back", JumpPage, 1 )

	Talk( 3, "Lucius: Choose one of the following Second Job Promotions." )
	Text( 3, "Crusader Promotion", JumpPage, 8 )
	Text( 3, "Champion Promotion", JumpPage, 9 )
	Text( 3, "Sharpshooter Promotion", JumpPage, 10 )
	Text( 3, "Cleric Promotion", JumpPage, 11 )
	Text( 3, "Seal Master Promotion", JumpPage, 12 )
	Text( 3, "Voyager Promotion", JumpPage, 13 )
	Text( 3, "Go Back", JumpPage, 1 )

	Talk( 4, "Lucius: After all, you want to become a Swordsman, very well. I am going to need 1000g and you need to be lv 9 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 1 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 8 )
	TriggerCondition( 3, IsCategory, 3 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000,1000 )
	TriggerAction( 3, TakeMoney, 1000,1000 )
	TriggerAction( 3, SetProfession, 1 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 4, "Become Swordman", MultiTrigger, GetMultiTrigger(), 3)
	Text( 4, "I want another Job", JumpPage, 2 )

	Talk( 5, "Lucius: After all, you want to become a Hunter, very well. I am going to need 1000g and you need to be lv 9 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 2 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 5, "Become Hunter", MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, "I want another Job", JumpPage, 2 )


	Talk( 6, "Lucius: After all, you want to become a Herbalist, very well. I am going to need 1000g and you need to be lv 9 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 5 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 5 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 6, "Become Herbalist", MultiTrigger, GetMultiTrigger(), 2)
	Text( 6, "I want another Job", JumpPage, 2 )

	Talk( 7, "Lucius: After all, you want to become a Explorer, very well. I am going to need 1000g and you need to be lv 9 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000,1000 )
	TriggerAction( 1, TakeMoney, 1000,1000 )
	TriggerAction( 1, SetProfession, 4 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 8 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000,1000 )
	TriggerAction( 2, TakeMoney, 1000,1000 )
	TriggerAction( 2, SetProfession, 4 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 8 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000,1000 )
	TriggerAction( 3, TakeMoney, 1000,1000 )
	TriggerAction( 3, SetProfession, 4 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 7, "Become Explorer", MultiTrigger, GetMultiTrigger(), 3)
	Text( 7, "I want another Job", JumpPage, 2 )


	Talk( 8, "Lucius: After all, you want to become a Crusader, very well. I am going to need 50000g and you need to be lv 40 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 9 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 9 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 8, "Become Crusader", MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, "I want another Job", JumpPage, 2 )

	Talk( 9, "Lucius: After all, you want to become a Champion, very well. I am going to need 50000g and you need to be lv 40 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 2 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 8 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 9, "Become Champion", MultiTrigger, GetMultiTrigger(), 1)
	Text( 9, "I want another Job", JumpPage, 2 )

	Talk( 10, "Lucius: After all, you want to become a Sharpshooter, very well. I am going to need 50000g and you need to be lv 40 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 12 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 10, "Become Sharpshooter", MultiTrigger, GetMultiTrigger(), 2)
	Text( 10, "I want another Job", JumpPage, 2 )

	Talk( 11, "Lucius: After all, you want to become a Cleric, very well. I am going to need 50000g and you need to be lv 40 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 13 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 13 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 11, "Become Cleric", MultiTrigger, GetMultiTrigger(), 2)
	Text( 11, "I want another Job", JumpPage, 2 )

	Talk( 12, "Lucius: After all, you want to become a Seal Master, very well. I am going to need 50000g and you need to be lv 40 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 14 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 14 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerFailure( 2, JumpPage, 15 )
	Text( 12, "Become Seal Master", MultiTrigger, GetMultiTrigger(), 2)
	Text( 12, "I want another Job", JumpPage, 2 )

	Talk( 13, "Lucius: After all, you want to become a Voayger, very well. I am going to need 50000g and you need to be lv 40 or higher." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 4 )
	TriggerCondition( 1, HasMoney, 50000,50000 )
	TriggerAction( 1, TakeMoney, 50000,50000 )
	TriggerAction( 1, SetProfession, 16 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 4 )
	TriggerCondition( 2, HasMoney, 50000,50000 )
	TriggerAction( 2, TakeMoney, 50000,50000 )
	TriggerAction( 2, SetProfession, 16 )
	TriggerAction( 2, JumpPage, 14 )
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 4 )
	TriggerCondition( 3, HasMoney, 50000,50000 )
	TriggerAction( 3, TakeMoney, 50000,50000 )
	TriggerAction( 3, SetProfession, 16 )
	TriggerAction( 3, JumpPage, 14 )
	TriggerFailure( 3, JumpPage, 15 )
	Text( 13, "Become Voyager", MultiTrigger, GetMultiTrigger(), 3)
	Text( 13, "I want another Job", JumpPage, 2 )

	Talk( 14, "Lucius: I will be always here, come back whenever you want to.")
	Text( 14, "Thanks",  CloseTalk)

	Talk( 15, "Lucius:Something is not right, make sure you got all necessary requeriments!")
	Text( 15, "I understand",  CloseTalk)

end

function r_talkAllReset ()

	Talk( 1, "Lucius: Hi! I am Reset Operator, Lucius. Let's see what i can do for you." )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Reset Skills", JumpPage, 2)
	Text( 1, "Reset Character", JumpPage, 3)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
	Other(	0899	)--Book of Strength Reset
	Other(	0900	)--Book of Consitution Reset
	Other(	0901	)--Book of Agility Reset
	Other(	0902	)--Book of Accuracy Reset
	Other(	0903	)--Book of Spirit Reset
	Other(	3109	)--Vial of Strength Reset
	Other(	3110	)--Vial of Consitution Reset
	Other(	3111	)--Vial of Agility Reset
	Other(	3112	)--Vial of Accuracy Reset
	Other(	3113	)--Vial of Spirit Reset


	Talk( 2, "Lucius: The Skill Reset is a very usefull machine, but its repair costs are realy high. I need at least 5.000.000g to make it work safety." )
	Text( 2, "Reset Skills", GetSkillResetOlu, 1)
	Text( 2, "Go back", JumpPage, 1 )

	Talk( 3, "Lucius: I just developed a new potion that increases the power of Level 100 characters, but you need to go back to Level 1, otherwise the side effects could be fatal" )
--	Text( 3, "Drink the potion", GetCharResetOlu, 1 )
	Text( 3, "Go Back", JumpPage, 1 )

end

function r_talkUniqItem ()

	Talk( 1, "Youth - Tommy: Finaly! I got lost while doing some school research. And now, those monsters trapped me! I need you help to get out of this place. Please take those itens to help you defeat them!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "I can't help you now...",  CloseTalk)

	InitTrade()
--	Other(	0333	)--Unique Gem Voucher
	Other(	0580	)--Unique Ring Voucher
	Other(	0581	)--Unique Necklace Voucher
	Other(	0582	)--Unique Coral Voucher

end


function r_talkLvUpMall ()

	Talk( 1, "Maria: Hi! I am Leveling Mall, Maria. I Just opened this store, i hope you enjoy." )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",  CloseTalk)

	InitTrade()
	Other(	1024	)--Super Rechargeable Battery
	Other(	3844	)--Heaven's Berry
--	Other(	1128	)--Mini Amplifier of Strive
	Other(	3094	)--Amplifier of Strive
	Other(	3095	)--Hi-Amplifier of Strive
	Other(	3845	)--Charmed Berry
	Other(	3096	)--Amplifier of Luck
	Other(	3097	)--Hi-Amplifier of Luck
	Other(	0849	)--Party EXP Fruit
	Other(	3105	)--Skating Potion
	Other(	3104	)--Elixir of Soul
	Other(	3102	)--Elixir of Bull
	Other(	3101	)--Elixir of Monkey
	Other(	3103	)--Elixir of Eagle
	Other(	3100	)--Elixir of Lion
--	Other(	3342	)--Lantern
	Other(	3339	)--Acceleration Potion
	Other(	3046	)--Power Sail
--	Other(	3909	)--Gyoza
	Other(	3099	)--SP Holy Water
--	Other(	3098	)--Constitution Recovery Flask
	Other(	3047	)--Voodoo Puppet
	Other(	0852	)--Full Body Armor
	Other(	3106	)--Battleship Armor
	Other(	0851	)--Battle Array
	Other(	0850	)--Weightless Potion
	Other(	3114	)--Sea Weed Killer

end 

function sky_01 ()
	
	
	Talk( 1, "Appereal NPC - Lance: Welcome to the Appereal Shop of Argent City. I am the owner Lance." )
	Text( 1, "Trade Appereals", BuyPage )

	InitTrade()
	Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5283	)
	Weapon(	5284	)
	Weapon(	5070	)
	Weapon(	5071	)
	Weapon(	5072	)
	Weapon(	5073	)
	Weapon(	5074	)
	Weapon(	5277	)
	Weapon(	5278	)
	Weapon(	5280	)
	Weapon(	5281	)
	Weapon(	5282	)
	Weapon(	5285	)
	Weapon(	5286	)
	Weapon(	5099	)
	Weapon(	5100	)
	Weapon(	5101	)
	Weapon(	5102	)
	Weapon(	5103	)
	Weapon(	5104	)
	Weapon(	5105	)
	Defence(	5221	)
	Defence(	5222	)
	Defence(	5223	)
	Defence(	5224	)
	Defence(	5225	)
	Defence(	5226	)
	Defence(	5227	)
	Defence(	5228	)
	Defence(	5229	)
	Defence(	5287	)
	Defence(	5288	)
	Defence(	5289	)
	Defence(	5290	)
	Defence(	5388	)
	Defence(	5389	)
	Defence(	5390	)
	Defence(	5391	)
	Defence(	5677	)
	Defence(	5678	)
	Defence(	5679	)
	Defence(	5680	)
	Defence(	5553	)
	Defence(	5554	)
	Defence(	5555	)
	Defence(	5556	)
	Defence(	5521	)
	Defence(	5522	)
	Defence(	5523	)
	Defence(	5524	)
	Defence(	5945	)
	Defence(	5946	)
	Defence(	5947	)
	Defence(	5948	)
	Defence(	5577	)
	Defence(	5578	)
	Defence(	5579	)
	Defence(	5580	)
	Defence(	5661	)
	Defence(	5662	)
	Defence(	5663	)
	Defence(	5664	)
	Defence(	5154	)
	Defence(	5155	)
	Defence(	5156	)
	Defence(	5160	)
	Defence(	5161	)
	Defence(	5162	)
	Defence(	5119	)
	Defence(	5120	)
	Defence(	5121	)
	Defence(	5315	)
	Defence(	5316	)
	Defence(	5317	)
	Defence(	5318	)
	Defence(	5341	)
	Defence(	5342	)
	Defence(	5343	)
	Defence(	5356	)
	Defence(	5357	)
	Defence(	5358	)
	Defence(	5359	)
	Defence(	5123	)
	Defence(	5124	)
	Defence(	5125	)
	Defence(	5127	)
	Defence(	5128	)
	Defence(	5129	)
	Defence(	5057	)
	Defence(	5065	)
	Defence(	5061	)
	Defence(	5081	)
	Defence(	5082	)
	Defence(	5083	)
	Defence(	5372	)
	Defence(	5373	)
	Defence(	5374	)
	Defence(	5375	)
	Defence(	5422	)
	Defence(	5423	)
	Defence(	5436	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)

end 

----------------------------------------------------------Appereal Carsise

function sky_02 ()
	
	
	Talk( 1, "Appareal NPC - Carsise: Welcome to the Appereal Shop of Argent City. I am the owner Carsise." )
	Text( 1, "Trade Appereals", BuyPage )

	InitTrade()
	Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5283	)
	Weapon(	5284	)
	Weapon(	5070	)
	Weapon(	5071	)
	Weapon(	5072	)
	Weapon(	5073	)
	Weapon(	5074	)
	Weapon(	5277	)
	Weapon(	5278	)
	Weapon(	5280	)
	Weapon(	5281	)
	Weapon(	5282	)
	Weapon(	5285	)
	Weapon(	5286	)
	Weapon(	5099	)
	Weapon(	5100	)
	Weapon(	5101	)
	Weapon(	5102	)
	Weapon(	5103	)
	Weapon(	5104	)
	Weapon(	5105	)
	Defence(	5230	)
	Defence(	5231	)
	Defence(	5232	)
	Defence(	5233	)
	Defence(	5234	)
	Defence(	5235	)
	Defence(	5236	)
	Defence(	5237	)
	Defence(	5291	)
	Defence(	5292	)
	Defence(	5293	)
	Defence(	5294	)
	Defence(	5392	)
	Defence(	5393	)
	Defence(	5394	)
	Defence(	5395	)
	Defence(	5681	)
	Defence(	5682	)
	Defence(	5683	)
	Defence(	5684	)
	Defence(	5557	)
	Defence(	5558	)
	Defence(	5559	)
	Defence(	5560	)
	Defence(	5525	)
	Defence(	5526	)
	Defence(	5527	)
	Defence(	5528	)
	Defence(	5949	)
	Defence(	5950	)
	Defence(	5951	)
	Defence(	5952	)
	Defence(	5581	)
	Defence(	5582	)
	Defence(	5583	)
	Defence(	5584	)
	Defence(	5665	)
	Defence(	5666	)
	Defence(	5667	)
	Defence(	5668	)
	Defence(	5319	)
	Defence(	5320	)
	Defence(	5321	)
	Defence(	5322	)
	Defence(	5345	)
	Defence(	5346	)
	Defence(	5347	)
	Defence(	5360	)
	Defence(	5361	)
	Defence(	5362	)
	Defence(	5363	)
	Defence(	5058	)
	Defence(	5066	)
	Defence(	5062	)
	Defence(	5115	)
	Defence(	5116	)
	Defence(	5117	)
	Defence(	5039	)
	Defence(	5040	)
	Defence(	5110	)
	Defence(	5111	)
	Defence(	5112	)
	Defence(	5113	)
	Defence(	5424	)
	Defence(	5425	)
	Defence(	5437	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)

end 

----------------------------------------------------------Appereal Phyllis

function sky_03 ()
	
	
	Talk( 1, "Appareal NPC - Phyllis: Welcome to the Appereal Shop of Argent City. I am the owner Phyllis." )
	Text( 1, "Trade Appereals", BuyPage )

	InitTrade()
	Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5283	)
	Weapon(	5284	)
	Weapon(	5070	)
	Weapon(	5071	)
	Weapon(	5072	)
	Weapon(	5073	)
	Weapon(	5074	)
	Weapon(	5277	)
	Weapon(	5278	)
	Weapon(	5280	)
	Weapon(	5281	)
	Weapon(	5282	)
	Weapon(	5285	)
	Weapon(	5286	)
	Defence(	5241	)
	Defence(	5242	)
	Defence(	5243	)
	Defence(	5244	)
	Defence(	5245	)
	Defence(	5246	)
	Defence(	5247	)
	Defence(	5248	)
	Defence(	5249	)
	Defence(	5250	)
	Defence(	5295	)
	Defence(	5296	)
	Defence(	5297	)
	Defence(	5298	)
	Defence(	5396	)
	Defence(	5397	)
	Defence(	5398	)
	Defence(	5399	)
	Defence(	5685	)
	Defence(	5686	)
	Defence(	5687	)
	Defence(	5688	)
	Defence(	5561	)
	Defence(	5562	)
	Defence(	5563	)
	Defence(	5564	)
	Defence(	5529	)
	Defence(	5530	)
	Defence(	5531	)
	Defence(	5532	)
	Defence(	5953	)
	Defence(	5954	)
	Defence(	5955	)
	Defence(	5956	)
	Defence(	5585	)
	Defence(	5586	)
	Defence(	5587	)
	Defence(	5588	)
	Defence(	5669	)
	Defence(	5670	)
	Defence(	5671	)
	Defence(	5672	)
	Defence(	5323	)
	Defence(	5324	)
	Defence(	5325	)
	Defence(	5326	)
	Defence(	5349	)
	Defence(	5350	)
	Defence(	5351	)
	Defence(	5364	)
	Defence(	5365	)
	Defence(	5366	)
	Defence(	5367	)
	Defence(	5416	)
	Defence(	5417	)
	Defence(	5418	)
	Defence(	5059	)
	Defence(	5063	)
	Defence(	5067	)
	Defence(	5172	)
	Defence(	5173	)
	Defence(	5426	)
	Defence(	5427	)
	Defence(	5438	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)

end 

----------------------------------------------------------Appereal Ami

function sky_04 ()
	
	
	Talk( 1, "Appareal NPC - Ami: Welcome to the Appereal Shop of Argent City. I am the owner Ami." )
	Text( 1, "Trade Appereals", BuyPage )

	InitTrade()
	Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5283	)
	Weapon(	5284	)
	Weapon(	5070	)
	Weapon(	5071	)
	Weapon(	5072	)
	Weapon(	5073	)
	Weapon(	5074	)
	Weapon(	5277	)
	Weapon(	5278	)
	Weapon(	5280	)
	Weapon(	5281	)
	Weapon(	5282	)
	Weapon(	5285	)
	Weapon(	5286	)
	Defence(	5312	)
	Defence(	5313	)
	Defence(	5314	)
	Defence(	5327	)
	Defence(	5328	)
	Defence(	5329	)
	Defence(	5330	)
	Defence(	5252	)
	Defence(	5253	)
	Defence(	5254	)
	Defence(	5255	)
	Defence(	5256	)
	Defence(	5257	)
	Defence(	5258	)
	Defence(	5259	)
	Defence(	5400	)
	Defence(	5401	)
	Defence(	5402	)
	Defence(	5403	)
	Defence(	5689	)
	Defence(	5690	)
	Defence(	5691	)
	Defence(	5692	)
	Defence(	5565	)
	Defence(	5566	)
	Defence(	5567	)
	Defence(	5568	)
	Defence(	5533	)
	Defence(	5534	)
	Defence(	5535	)
	Defence(	5536	)
	Defence(	5957	)
	Defence(	5958	)
	Defence(	5959	)
	Defence(	5960	)
	Defence(	5589	)
	Defence(	5590	)
	Defence(	5591	)
	Defence(	5592	)
	Defence(	5673	)
	Defence(	5674	)
	Defence(	5675	)
	Defence(	5676	)
	Defence(	5138	)
	Defence(	5139	)
	Defence(	5140	)
	Defence(	5141	)
	Defence(	5352	)
	Defence(	5353	)
	Defence(	5354	)
	Defence(	5355	)
	Defence(	5368	)
	Defence(	5369	)
	Defence(	5370	)
	Defence(	5371	)
	Defence(	5419	)
	Defence(	5420	)
	Defence(	5421	)
	Defence(	5060	)
	Defence(	5064	)
	Defence(	5068	)
	Defence(	5428	)
	Defence(	5429	)
	Defence(	5430	)
	Defence(	5431	)
	Defence(	5179	)
	Defence(	5180	)
	Defence(	5181	)
	Defence(	5182	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)

end 

function JoJo_11 () -- Kals Exchanger

	Talk( 1, "Hi! Welcome To Kals Exchanger" )
	Text( 1, "Exchange", JumpPage, 2 )
	Text( 1, "Trade", BuyPage)
	Text( 1, "How get em??", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3990,380 )
	TriggerAction( 1, TakeItem, 3990,380 )
	TriggerAction( 1, GiveItem, 3457, 1, 4 )
	Talk( 2, "Exchange 380x of Birch Wood Log For 1 Kal" )
	Text( 2, "Obtain Kal", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Go Search out side of Solace Heaven" )

	InitTrigger()
	Other(      0196         )--

end


function JoJo_10 () -- JoJo Exchanger Note:Note: some equips are not same ID's you have to change to your own ItemInfo

	Talk( 1, "Exchanger: Exchange your kals for Unique Gems" )
	Text( 1, "Trade for Unique Gems", JumpPage, 2)
	

	Talk( 2, "Exchanger: Chose your Unique Gems Note:4 Kals For One Unique Gem" )
	Text( 2, "Gem of Rage", JumpPage, 5)
	Text( 2, "Gem of Colossus", JumpPage, 6)
	Text( 2, "Gem of the Wind", JumpPage, 7)
	Text( 2, "Gem of Striking", JumpPage, 8)
	Text( 2, "Gem of Soul", JumpPage, 9)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 863, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 862, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 860, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(7,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 861, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(8,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 1012, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(9,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "You dont have enough required items!" )
	Talk( 27, "Woila, check your Inventory!" )

end

function sky_07 ()
	
	
	Talk( 1, "Mall NPC: Hello, I am the Mall NPC. I will sell you all the items that are unavalaible In-Game." )
	Text( 1, "Trade", BuyPage )
	
	InitTrade()
	Weapon(	453	) 
	Weapon(	455	)
	Weapon(	3074	)
	Weapon(	3075	)
	Weapon(	891	)
	Weapon(	454	) 
	Weapon(	890	)
	Weapon(	456	)
	Weapon(	1020	)
	Defence(	3109	)
	Defence(	3110	)
	Defence(	3111	) 
	Defence(	3112	)
	Defence(	3113	)
	Defence(	3844	)
	Defence(	3845	)
	Defence(	849	)
	Defence(	3094	)
	Defence(	3096	)
	Defence(	3095	)
	Defence(	3097	)
	Other(	3088	)
	Other(	3089	)
	Other(	3090	)
	Other(	3091	)
	Other(	3092	)
	Other(	3093	)
	Other(	207	)
	Other(	208	)
	Other(	3462	)
	Other(	3463	)
	Other(	1022	)
	Other(	1024	)
	Other(	3300	)
	Other(	3301	)
	Other(	5839	)
	Other(	5840	)
	Other(	1037	)
	Other(	1038	)
	Other(	1039	)
	Other(	1129	)
	Other(	1130	)
	Other(	1131	)
	Other(	1132	)
	Other(	1133	)
	Other(	2625	)
	Other(	2630	) 
	Other(	2634	)
	Other(	2635	)
	Other(	2636	)
	Other(	2637	)
	Other(	2638	)

end

function gold_01 () -- 3488	TOPGX Card

	Talk( 1, "Exchanger: Exchange your Gold For Million Dollar Note!" )
	Text( 1, "Exchange 1 Million for 1x Million Dollar Note", JumpPage, 9)
	Text( 1, "Exchange 50 Million for 50x Million Dollar Note", JumpPage, 10)
	Text( 1, "Exchange 100 Million for 100x Million Dollar Note", JumpPage, 11) 

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasMoney, 1000000 )	
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GiveItem, 854, 1, 4 )
	TriggerAction( 1, JumpPage, 31)
	TriggerFailure( 1, JumpPage, 30 )
	Text(9,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasMoney, 50000000 )	
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 854, 50, 4 )
	TriggerAction( 1, JumpPage, 31)
	TriggerFailure( 1, JumpPage, 30 )
	Text(10,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasMoney, 100000000 )	
	TriggerAction( 1, TakeMoney, 100000000 )
	TriggerAction( 1, GiveItem, 854, 100, 4 )
	TriggerAction( 1, JumpPage, 31)
	TriggerFailure( 1, JumpPage, 30 )
	Text(11,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 30, "You dont have enough required items!" )
	Talk( 31, "Woila, check your new weapon!" )
end