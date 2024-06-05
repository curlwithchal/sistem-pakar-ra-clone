<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDiagnosaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diagnosa', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('pasien_id')->index('diagnosa_pasien_id_foreign');
            $table->unsignedInteger('penyakit_id')->index('diagnosa_penyakit_id_foreign');
            $table->unsignedInteger('persentase');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('diagnosa');
    }
}
