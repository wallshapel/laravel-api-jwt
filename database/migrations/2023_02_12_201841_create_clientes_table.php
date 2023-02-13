<?php
    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;
    return new class extends Migration {
        /**
         * Run the migrations.
         *
         * @return void
         */
        public function up() {
            Schema::create('clientes', function (Blueprint $table) {
                $table->engine = 'InnoDB';
                $table->bigIncrements('id');
                $table->string('nombre', 75)->nullable(false);
                $table->string('apellido', 75)->nullable(false);
                $table->string('telefono', 8)->nullable(false);
                $table->string('email', 85);
                $table->timestamps();
            });
        }
        /**
         * Reverse the migrations.
         *
         * @return void
         */
        public function down() {
            Schema::dropIfExists('clientes');
        }
    };
?>