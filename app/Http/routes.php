<?php

    Route::group(['prefix' => 'Parceiro'], function()
    {
        Route::get('/', 'Parceiro\HomeController@index');
    });