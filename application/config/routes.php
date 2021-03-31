<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Home';
$route['404_override'] = 'My404';
$route['javascript-not-available'] = 'JS_detect';
$route['translate_uri_dashes'] = FALSE;

/*
|
| START WEBSITE URL FOR USER ONLY
|
*/
$route['dashboard'] = 'website/user/Dashboard';
$route['history'] = 'website/user/Dashboard/history_ujian';
$route['detail-history'] = 'website/user/Dashboard/detail_history_ujian';
$route['pre-ujian'] = 'website/user/Ujian/mulai_ujian';
$route['ujian'] = 'website/user/Ujian';
/* $route['ujian2'] = 'website/user/Ujian/ujian_page_next_design'; */
/*
|
| END WEBSITE URL FOR USER ONLY
|
*/

/*
|
| START WEBSITE URL FOR LEMBAGA ONLY
|
*/
$route['lembaga/dashboard'] = 'website/lembaga/Dashboard';
$route['lembaga/materi'] = 'website/lembaga/Tes_online/materi';
$route['lembaga/add-materi'] = 'website/lembaga/Tes_online/add_materi';
$route['lembaga/edit-materi/(:num)'] = 'website/lembaga/Tes_online/edit_materi/$1';
$route['lembaga/delete-materi/(:num)'] = 'website/lembaga/Tes_online/delete_materi/$1';
$route['lembaga/active-materi/(:num)'] = 'website/lembaga/Tes_online/active_materi/$1';
$route['lembaga/paket-soal'] = 'website/lembaga/Tes_online/paket_soal';
$route['lembaga/add-paket-soal'] = 'website/lembaga/Tes_online/add_paket_soal';
$route['lembaga/detail-paket-soal/(:any)'] = 'website/lembaga/Tes_online/get_detail_paket_data/$1';
$route['lembaga/edit-paket-soal/(:any)'] = 'website/lembaga/Tes_online/edit_paket_data/$1';
$route['lembaga/disable-paket-soal/(:any)'] = 'website/lembaga/Tes_online/disable_paket_data/$1';
$route['lembaga/active-paket-soal/(:any)'] = 'website/lembaga/Tes_online/active_paket_data/$1';
$route['lembaga/list-soal/(:any)'] = 'website/lembaga/Tes_online/list_soal/$1';
$route['lembaga/add-soal/(:any)'] = 'website/lembaga/Tes_online/add_soal/$1';
$route['lembaga/edit-soal/(:any)/(:any)/(:num)'] = 'website/lembaga/Tes_online/edit_soal/$1/$2/$3';
$route['lembaga/disable-soal/(:any)/(:any)/(:num)'] = 'website/lembaga/Tes_online/disable_soal/$1/$2/$3';
$route['lembaga/drop-all/(:any)'] = 'website/lembaga/Tes_online/disable_all_soal/$1';
$route['lembaga/sesi-pelaksana'] = 'website/lembaga/Tes_online/sesi_pelaksana';
$route['lembaga/user-lembaga'] = 'website/lembaga/User/user_lembaga';
$route['lembaga/add-user-lembaga'] = 'website/lembaga/User/add_user_lembaga';
$route['lembaga/disable-user-lembaga/(:any)/(:any)'] = 'website/lembaga/user/disable_user_lembaga/$1/$2';
$route['lembaga/group-participants'] = 'website/lembaga/User/group_participants';
$route['lembaga/add-group-participants'] = 'website/lembaga/user/add_group_participants';
$route['lembaga/edit-group-participants/(:any)'] = 'website/lembaga/user/edit_group_participants/$1';
$route['lembaga/disable-group-participants/(:any)'] = 'website/lembaga/user/disable_group_participants/$1';
$route['lembaga/participants'] = 'website/lembaga/User/participants';
$route['lembaga/add-participants'] = 'website/lembaga/User/add_participants';
$route['lembaga/edit-participants/(:any)/(:any)'] = 'website/lembaga/user/edit_participants/$1/$2';
$route['lembaga/disable-participants/(:any)/(:any)'] = 'website/lembaga/user/disable_participants/$1/$2';
$route['lembaga/logout'] = 'website/lembaga/Dashboard/logout';
/*
|
| START WEBSITE URL FOR LEMBAGA ONLY
|
*/