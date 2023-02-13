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
            Schema::create('cuenta', function (Blueprint $table) {
                $table->engine = 'InnoDB';
                $table->bigIncrements('id');
                $table->string('moneda', 3);
                $table->decimal('fondo', $precision = 8, $scale = 2);
                $table->bigInteger('cliente_id')->unsigned();  // unsigned() es necesario siempre que el campo a relacionar sea númerico.
                $table->timestamps();
                // Claves foraneas.
                $table->foreign('cliente_id')->references('id')->on('clientes')->onDelete('cascade')->onUpdate('cascade');
            });
        }
        /**
         * Reverse the migrations.
         *
         * @return void
         */
        public function down() {
            Schema::dropIfExists('cuenta');
        }
    };
?>