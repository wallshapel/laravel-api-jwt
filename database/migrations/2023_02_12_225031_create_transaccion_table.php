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
            Schema::create('transaccion', function (Blueprint $table) {
                $table->engine = 'InnoDB';
                $table->bigIncrements('id');
                $table->bigInteger('cuenta_id')->unsigned()->nullable(false);  // unsigned() es necesario siempre que el campo a relacionar sea númerico.
                $table->bigInteger('tipo_transaccion_id')->unsigned()->nullable(false);  // unsigned() es necesario siempre que el campo a relacionar sea númerico.
                $table->decimal('monto', $precision = 8, $scale = 2)->nullable(false);
                $table->timestamps();
                // Claves foraneas.
                $table->foreign('cuenta_id')->references('id')->on('cuenta')->onDelete('cascade')->onUpdate('cascade');
                $table->foreign('tipo_transaccion_id')->references('id')->on('tipo_transaccion')->onDelete('cascade')->onUpdate('cascade');
            });
        }
        /**
         * Reverse the migrations.
         *
         * @return void
         */
        public function down() {
            Schema::dropIfExists('transaccion');
        }
    };
?>