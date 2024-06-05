<?php

use App\Gejala;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GejalaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataGejala = [
            [
            'name' => 'Gelisah',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Kelelahan',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Luka antara gusi dan gigi',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Benjolan di bagian kepala, leher, atau rahang',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Demam',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Gusi mudah berdarah',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Kelenjar getah bening di bagian bawah rahang sering bengkak',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Nyeri pada saat menelan makanan',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Nyeri pada mulut',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Bengkak pada gusi',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Sakit pada saat membuka mulut',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Pada sudut mulut pecah-pecah dan kemerahan',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Radang pada lidah',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
            'name' => 'Pembengkakan kelenjar getah bening di leher',
    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
        ];

        DB::table('gejala')->insert($dataGejala);
    }
}
