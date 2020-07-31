create table gender_id(
	gender_no int primary key not null,
	gender varchar(10)
);

insert into gender_id(gender_no, gender)
values( 1 , 'male'), ( 0 , 'female');

select * from gender_id;
============================================================
create table res_id(
	res_no int primary key not null,
	res_name varchar()
);
select * from res_id;
============================================================
create table res_info(
	res_no int ,
	Food_Name varchar,
	calories float,
	protein	float,
	total_lipid float,
	crbohydrate float, 
	energy float,
	sugars float, 
	fiber float, 
	sodium float, 
	cholesterol	float,
	trans_fat float,
	saturated_fat float,
	calcium float,
	iron float,
	vitamin_A float,
	vitamin_C float,
	foreign key(res_no) references res_id(res_no)
);
select * from res_info;
============================================================
create table humangroup_id(
	group_no int primary key not null,
	gender_id int,
	lowerBound int,
	upperBound int,
	foreign key(gender_id) references gender_id(gender_no)
);
============================================================
create table nutri_info(
	group_no int,
	Protein_g float,
	Protein_percent_kcal float,
	Carbohydrate_g float,
	Carbohydrate_percent_kcal float,
	Dietary_fiber_g float,
	Added_sugars_percent_kcal float,
	Total_fat_percent_kcal float,
	Saturated_fat_percent_kcal float,
	Linoleic_acid_g float,
	Linolenic_acid_g float,
	Calcium_mg float,
	Iron_mg float,
	Magnesium_mg float,
	Phosphorus_mg float,
	Potassium_mg float, 
	Sodium_mg float,
	Zinc_mg float,
	Copper_mcg float,
	Manganese_mg float,
	Selenium_mcg float,
	Vitamin_A_mcg_RAE float,
	Vitamin_E_mg_AT float,
	Vitamin_D_IU float,
	Vitamin_C_mg float,
	Thiamin_mg float,
	Riboflavin_mg float,
	Niacin_mg float,
	Vitamin_Bt_mg float,
	Vitamin_B12_mcg float,
	Choline_mg float,
	Vitamin_K_mcg float,
	Folate_mcg_DFE float,
	foreign key(group_no) references humangroup_id(group_no)
);

select * from nutri_info;
============================================================
create table calorie_info(
	gender_no int,
	age int,
	sedentary_level int, 
	moderately_level int,
	active_level int,
	foreign key(gender_no) references gender_id(gender_no)
);






