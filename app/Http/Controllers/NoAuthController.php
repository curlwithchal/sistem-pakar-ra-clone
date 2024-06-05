<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pakar;
use App\Apotik;

class NoAuthController extends Controller
{
    #dokter-pakar-controller
    public function dokter()
    {
        $pakar = Pakar::all();
        return view('dok-pakar',compact('pakar'));
    }

     #Klinik-apotik
     public function apotik()
     {
         $apotik = Apotik::all();
         return view('klinik-apotik',compact('apotik'));
         
     }
}
