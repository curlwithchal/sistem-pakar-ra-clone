<?php

use Illuminate\Database\Seeder;
use App\Kelamin;
use Illuminate\Support\Facades\DB;

class KelaminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('kelamin')->insert([
            "id" => 1,
            "js_kelamin" => "laki-laki"
        ]);

        DB::table('kelamin')->insert([
            "id" => 2,
            "js_kelamin" => "perempuan"
        ]);
    }

}
