--CREATE TABLES
create table item_types (
	id_type int, 
	name varchar
);

create table items (
	id integer primary key autoincrement,
	name varchar,
	id_type int references item_types on update cascade on delete set null,
	price varchar,
	weight float,
	desc text
);

--LOAD DATA
INSERT INTO item_types (name, id_type) VALUES
('EQUIPO',1),
('ESPECIALES',2),
('HERRAMIENTAS',3),
('INDUMENTARIA',4),
('ARMA SENCILLA',5),
('ARMA MARCIAL',6),
('ARMA EXOTICA',7),
('ARMADURA',8),
('CAMPAÑA',9);

INSERT INTO items (name,price,weight,id_type,desc) VALUES
('Abrojos','1po',2,1,'Un abrojo es una pieza de metal en forma de estrella con cuatro  brazos terminados en punta. Básicamente se trata de objetos diseñados para que una de sus púas siempre hacia arriba. Se dejan caer al suelo con la esperanza de que los enemigos los pisen o se vean obligados a frenar su carrera, lo cual permitirá dejarlos atrás. Una bolsa de abrojos de 1 kilo cubre un área cuadrada de 1,5 metros de lado.'),
('Abrojos, cristal','150po',2,1,'Estos abrojos especiales están hechos de un cristal muy fuerte. Se colocan igual que los abrojos normales y liberan un gas venenoso. La víctima debe realizar un TS de Fortaleza CD 12 o dormirá durante 1 minuto. Después de ese minuto, el objetivo debe volver a realizar otro TS de Fortaleza CD 12 o dormirá 1d4 minutos adicionales. El gas afecta a las criaturas inmunes al sueño mágico, pero no a las que sean inmunes a los venenos.'),
('Aceite (frasco de 1 pinta)','1pp',1,1,'Una pinta de aceite tarda 6 horas en consumirse en una lámpara. Un frasco de aceite puede usarse como arma deflagradora. Una vez lanzado, solo hay un 50% de posibilidades de que el frasco arda con éxito. Puedes verte una pinta de aceite en el suelo, cubriendo un área cuadrada de 1,5 metros de lado. Si se le prende fuego, el charco arderá 2 asaltos en infligirá 1d3 puntos de daño a cada criatura que haya en el área cubierta.'),
('Aguja de costura','5pp',0,1,'Barrita puntiaguda de metal u otra materia con un ojo para meter el hilo, que se utiliza para coser, bordar, tejer, etc.'),
('Ala sustentadora','300 po',30,1,'Esta capa plegada se despliega en forma de alas para planear similares a las de un murciélago, al cabo de 4,5 metros si el portador cae más de 6 metros de altura. El ala sustentadora necesita otros 6 metros de distancia para detener la caída del portador y un espacio sin restricciones para planear de al menos 15 metros de diámetro. Si se cumplen las tres condiciones, el ala sustentadora evita todo el daño de la caída. Una vez desplegada, debe ser cuidadosamente plegada de nuevo antes de poder volver a ser utilizada. Hay un 25% de posibilidades de que el ala sustentadora quede inutilizada tras cada uso. Las alas sustentadoras son muy populares entre los jinetes aéreos de hipogrifos de la Gran Brecha.'),
('Almádena','1po',10,1,'Este martillo de dos manos, provisto de cabeza de hierro, resulta muy útil para abrir cofres de tesoro a golpes.'),
('Antorcha','1pc',1,1,'Una antorcha típica es una vara de madera con un extremo cubierto de lino enrollado, empapado en sebo u otra sustancia similar. Una antorcha ilumina claramente en un radio de 6 metros, tarda una hora en consumirse y crea una zona de sombras en un radio de 12 metros. Si una antorcha es utilizada en combate, considérala como un arma improvisada a una mano que causa daño contundente igual al de un guantelete de su tamaño, más 1 punto de daño por fuego.'),
('Anzuelo','1pp',0,1,'Arponcillo o garfio, generalmente pequeño y metálico que, pendiente de un sedal o alambre y puesto en él algún cebo, sirve para pescar.'),
('Aparejos de poleas','5po',5,1,'Máquina simple que consiste en una rueda móvil alrededor de un eje, acanalada en su circunferencia, por donde pasa una cuerda o cadena en cuyos dos extremos actúan, respectivamente, la potencia y la resistencia.'),
('Ariete portátil','10po',20,1,'Este tronco de madera, revestido de hierro, es la herramienta perfecta para derribar puertas. No sólo te ofrece un bonificador +2 de circunstancias en las pruebas de Fuerza para derribar puertas, sino que permite que otra persona te ayude; ésta no tendrá que tirar, sino que añadirá otro +2 a tu prueba.'),
('Aspersorio normal','5po',3,1,'Este ligero artilugio de metal se parece una clava pequeña o a una maza ligera. En su interior tienen una reserva que puede albergar hasta tres frascos de agua bendita. Agitando el aspersorio como acción estándar, puedes asperjar un frasco de agua bendita sobre un objetivo que se encuentre a alcance de cuerpo a cuerpo. Esta acción es un ataque de toque a distancia. No hace falta poseer competencia alguna para usar el aspersorio para administrar agua bendita en lugar de lanzarla o verter los contenidos del frasco.'),
('Aspersorio Plata','50 po',3,1,'Este ligero artilugio de metal se parece una clava pequeña o a una maza ligera. En su interior tienen una reserva que puede albergar hasta tres frascos de agua bendita. Agitando el aspersorio como acción estándar, puedes asperjar un frasco de agua bendita sobre un objetivo que se encuentre a alcance de cuerpo a cuerpo. Esta acción es un ataque de toque a distancia. No hace falta poseer competencia alguna para usar el aspersorio para administrar agua bendita en lugar de lanzarla o verter los contenidos del frasco.'),
('Bandolera','5pp',0.5,1,'Este cinturón de cuero tiene presillas y bolsillos para llevar objetos pequeños. Suele llevarse cruzada al pecho y tiene capacidad para ocho objetos.'),
('Bandolera de gran calidad','50pp',0.5,1,'Esta bandolera de buena manufactura tiene capacidad para doce objetos.'),
('Baraja de Talis','2po',0.25,1,'Un juego de setenta y ocho cartas, normalmente hechas de papel o pergamino pintado, guardadas en un estuche de madera. Esta baraja es similar a la del tarot.'),
('Barril vacío','2po',30,1,'Un recipiente cilíndrico hueco de madera o metal que sirve como medio de almacenamiento de elementos líquidos o sólidos. Tiene capacidad para hasta 120 litros de líquido.'),
('Bolsa para el cinto','1po',0.5,1,'Esta bolsa de cuero se ata al cinto. Resulta muy útil para llevar cosas pequeñas.'),
('Botella de vino vidrio vacía','50pc',0,1,'Un recipiente con el cuello estrecho que se utiliza para conservar, almacenar y transportar líquidos. Tiene capacidad para hasta 1 litro.'),
('Botija arcilla','3pc',9,1,'Un recipiente de alfarería con tapón. Tiene capacidad para 4 litros de líquido.'),
('Brazo articulado','10po',3,1,'Este pequeño bastón se puede extender y bloquear en cualquier longitud desde 1,5 a 3 metros. Se utiliza habitualmente como abrazadera robusta en mitad de un pasadizo, proporcionando agarre seguro para una o más cuerdas. Un brazo colocado adecuadamente puede soportar hasta 200 kilos de peso. Colocar un brazo permite a un personaje asegurar una cuerda o garfio de escalada donde de cualquier otra forma sería imposible. Los grupos de aventureros pueden enviar a un escalador experimentado para que realice una escalada difícil o un descenso peligroso, coloque un brazo articulado al otro lado del obstáculo, y que ello permita a los aventureros más torpes agarrarse mientras cruzan esa zona peligrosa.'),
('Cadena 3m (10'')','30po',2,1,'Una cadena tiene una dureza de entre 10 y 5 puntos de golpe; para romperla hace falta tener éxito en una prueba de Fuerza CD 25.'),
('Cálamo','1pp',0,1,'Una varilla de madera con una punta especial en uno de sus extremos. Esta punta, que sirve para escribir con tina, se impregna directamente en el tintero y dibuja una línea cuando se desplaza sobre una superficie.'),
('Campana','1po',0,1,'Un instrumento de metal en forma de copa invertida que suena al golpearlo el badajo que tiene en su interior.'),
('Catalejo','1000po',1,1,'Los objetos a su través se ven al doble de su tamaño.'),
('Cerradura Sencilla','20po',1,1,'Estos mecanismos se abren con una llave grande y pesada. La CD para abrir uno de estos mecanismo empleando la habilidad de Abrir cerraduras depende de la calidad del mismo: sencilla CD 20, corriente CD 25, de buena calidad CD 30, asombrosa CD 40.'),
('Cerradura Corriente','40po',1,1,'Estos mecanismos se abren con una llave grande y pesada. La CD para abrir uno de estos mecanismo empleando la habilidad de Abrir cerraduras depende de la calidad del mismo: sencilla CD 20, corriente CD 25, de buena calidad CD 30, asombrosa CD 40.'),
('Cerradura De calidad','80po',1,1,'Estos mecanismos se abren con una llave grande y pesada. La CD para abrir uno de estos mecanismo empleando la habilidad de Abrir cerraduras depende de la calidad del mismo: sencilla CD 20, corriente CD 25, de buena calidad CD 30, asombrosa CD 40.'),
('Cesto vacío','4pp',1,1,'Cesta grande más ancha que alta.'),
('Cinturón para pociones','1po',1,1,'Este fuerte cinturón de cuero, parecido a una bandolera, tiene bolsillos para guardar viales de pociones con cierres o solapas para evitar que se caigan. Tiene capacidad para seis pociones. Coger una poción de uno de estos cinturones se considera una acción gratuita una vez por asalto.'),
('Cinturón de gran calidad para pociones','60po',1,1,'Este cinturón para pociones, de excelente manufactura, tiene capacidad para albergar diez pociones. Coger una poción de uno estos cinturones e considera acción gratuita una vez por asalto.'),
('Cofre vacío','2po',25,1,'Una caja resistente dotada de tapa y cerradura que se utiliza para guardar objetos de valor.'),
('Cubo vacío','5pp',2,1,'Un recipiente más ancho en la boca que en el fondo, con un asa en la circunferencia mayor:'),
('Cuerda de cáñamo 15m (50'')','1po',10,1,'La cuerda de este material tiene 2 puntos de golpe; para romperla hace falta tener éxito en una prueba de Fuerza CD 23.'),
('Cuerda de seda 15m (50'')','10po',5,1,'La cuerda de este material tiene 4 puntos de golpe; para romperla hace falta tener éxito en una prueba de Fuerza CD 24. Es tan flexible, que añade un bonificador +2 de circunstancia en las pruebas de Trepar.'),
('Escalera de mano 3m (10'')','5pc',20,1,'Una escalerilla, sencilla y recta, fabricada en madera.'),
('Escudo para carro Estandar','75po',40,1,'Son grandes escudos de madera reforzados con hierro. Se pueden colocar juntos rápidamente para proteger carros y otros vehículos abiertos similares. Dos personas a la vez pueden montar uno de estos escudos como una acción estándar. Una vez montado, cada escudo proporciona a una persona de tamaño Pequeño ¾ de cobertura, y a un personaje Mediano ½ cobertura tras el escudo. Cada escudo para carro tiene dureza 5, y 30 puntos de golpe. Algunos vienen equipados con aberturas para disparar flechas desde el interior del carro sin exponer al arquero. La mayoría de los carros en Luiren están construidos con soportes especiales bajo el suelo de los carromatos capaces de albergar hasta seis escudos. Los escudos para carro se suelen vender en grupos de seis, ya que este es el número necesario para proteger completamente un carro normal de Luiren.'),
('Escudo para carro Tirador','100po',40,1,'Son grandes escudos de madera reforzados con hierro. Se pueden colocar juntos rápidamente para proteger carros y otros vehículos abiertos similares. Dos personas a la vez pueden montar uno de estos escudos como una acción estándar. Una vez montado, cada escudo proporciona a una persona de tamaño Pequeño ¾ de cobertura, y a un personaje Mediano ½ cobertura tras el escudo. Cada escudo para carro tiene dureza 5, y 30 puntos de golpe. Algunos vienen equipados con aberturas para disparar flechas desde el interior del carro sin exponer al arquero. La mayoría de los carros en Luiren están construidos con soportes especiales bajo el suelo de los carromatos capaces de albergar hasta seis escudos. Los escudos para carro se suelen vender en grupos de seis, ya que este es el número necesario para proteger completamente un carro normal de Luiren.'),
('Espejito de acero pulido','10po',0.5,1,'Este objeto es útil cuando quieres mirar lo que hay tras una esquina, hacer señales a tus compañeros reflejando la luz del sol, vigilar a une medusa, asegurarte de que estás presentable para tratar con la reina o examinar heridas que hayas recibido en partes de tu cuerpo difíciles de ver.'),
('Estuche para mapas o rollos de pergamino','1po',0.5,1,'Un tubo con tapa, hecho de cuero o estaño, que se utiliza para guardar pergamino o papel enrollado.'),
('Frasco vacío','3pc',1.5,1,'Un recipiente, hecho de cristal, metal o arcilla, que se cierra apretando fuertemente un tapón. Tiene capacidad para una pinta de líquido.'),
('Garfio de escalada','1po',4,1,'El garfio de escalada se ata al extremo de una cuerda para asegurarla a unas almenas, una ventana, las ramas de un árbol u otro saliente. Arrojar un garfio de escalada de manera adecuada requiere una prueba de Uso de cuerdas con éxito CD 10, +2 por cada 3 metros de distancia hasta el objetivo.'),
('Grilletes normales','15po',2,1,'Los grilletes pueden sujetar a una criatura de tamaño Mediano. El preso puede usar la habilidad de Escapismo para liberarse CD 30 o CD 35 si son de gran calidad. Para romper unos grilletes hace falta tener éxito en una prueba de Fuerza CD 26, o CD 28 si son de gran calidad. Los grilletes tienen dureza 10 y 10 puntos de golpe. La mayoría de ellos tienen cerradura, por tanto, has de añadir a su precio el correspondiente a la cerradura que quieras. Los grilletes para criaturas Pequeñas cuestan lo mismo. Para criaturas Grandes, cuestan diez veces lo indicado. Las criaturas Colosales, Gargantuescas, Menudas, Diminutas y Minúsculas sólo pueden ser retenidas con grilletes fabricados especialmente para ellas.'),
('Grilletes gran Calidad','50po',2,1,'Los grilletes pueden sujetar a una criatura de tamaño Mediano. El preso puede usar la habilidad de Escapismo para liberarse CD 30 o CD 35 si son de gran calidad. Para romper unos grilletes hace falta tener éxito en una prueba de Fuerza CD 26, o CD 28 si son de gran calidad. Los grilletes tienen dureza 10 y 10 puntos de golpe. La mayoría de ellos tienen cerradura, por tanto, has de añadir a su precio el correspondiente a la cerradura que quieras. Los grilletes para criaturas Pequeñas cuestan lo mismo. Para criaturas Grandes, cuestan diez veces lo indicado. Las criaturas Colosales, Gargantuescas, Menudas, Diminutas y Minúsculas sólo pueden ser retenidas con grilletes fabricados especialmente para ellas.'),
('Hamaca','1pp',2,1,'La hamaca, una innovación de la tierra de Maztica, es una manta de lino o cáñamo que lleva unas resistentes cuerdas entretejidas para poder atarla entre dos árboles u otros apoyos verticales.'),
('Jabón','5pp',1,1,'Producto que resulta de la combinación de un álcali con ciertos aceites y sirve para lavar con agua.'),
('Jarra/taza de arcilla','2pc',1,1,'Vasija con una o dos asas, cuello ancho y boca con un pico que se usa para contener y servir las bebidas'),
('Jarro de arcilla','2pc',5,1,'Una vasija semejante a una jarra, pero con una sola asa'),
('Juego de ajedrez corriente','2po',4,1,'Las piezas del ajedrez faerunio incluyen reyes, reinas, sacerdotes, caballeros andantes, torres y peones. Los juegos suelen usar figuras famosas como reyes. El juego completo está formado por treinta y dos piezas y un tablero guardados en un estuche de madera. Los juegos corrientes están hechos de materiales más humildes, como madera tallada y teñida.'),
('Juego de ajedrez Calidad','25po',7,1,'Las piezas del ajedrez faerunio incluyen reyes, reinas, sacerdotes, caballeros andantes, torres y peones. Los juegos suelen usar figuras famosas como reyes. El juego completo está formado por treinta y dos piezas y un tablero guardados en un estuche de madera. Los juegos de calidad excelente tienen piezas de ébano y marfil y un tablero de mármol.'),
('Juego de damas','1po',2,1,'Similar al juego de damas moderno. El juego está compuesto por veinticuatro piezas de arcilla o piedra y un tablero, guardados en un estuche de madera. El tablero tiene el mismo diseño que el de ajedrez.'),
('Juego de huesos de viejos','2pp',1,1,'Es similar al juego moderno que funciona de forma similar: el objetivo es ir quitando de uno en uno los huesos del montón en que se hayan apilado sin que éste caiga. El juego lleva “palitos” hechos de hueso y un bote de cuero o metal para llevarlos.'),
('Lacre','1po',1,1,'Pasta sólida, que se emplea derretida para cerrar y sellar cartas y paquetes.'),
('Lámpara corriente','1pp',1,1,'Ilumina claramente en un radio de 4 metros y medio, proporciona sombras en un radio de 9 metros y arde durante 6 horas consumiendo medio litro de aceite. Arde de forma más regular que la antorcha; sin embargo, al contrario de lo que sucede con la linterna, su llama está en contacto directo con el aire y su combustible puede verterse con facilidad, resultando peligrosa en la mayoría de situaciones a que se enfrenta el aventurero. Las lámparas pueden llevarse con una mano.'),
('Leña por día','1pc',20,1,'Troncos, ramas y trozos de madera seca que se emplean para hacer fuego.'),
('Linterna de ojo de buey','12po',3,1,'Esta linterna tiene un solo postigo y las demás caras interiores están muy pulidas para reflejar la luz en una única dirección. Sirve para iluminar claramente en un cono de 18 metros, e iluminar con sombras en un cono de 36 metros. Arde durante 6 horas consumiendo medio litro de aceite. Las linternas pueden llevarse con una mano.'),
('Linterna sorda','7po',2,1,'La linterna sorda tiene postigos o bisagras a los lados, ilumina claramente en un radio de 9 metros y proporciona iluminación en sombras en un radio de 18 metros. Arde unas 6 horas consumiendo medio litro de aceite. Las linternas pueden llevarse con una mano.'),
('Lona 2,7 m2','1pp',1,1,'Tela fuerte con la que se hacen velas, toldos, tiendas de campaña, etc.'),
('Lubricante de armadura','40po',1,1,'Este aceite, que no es mágico, reduce la fricción que dificulta el movimiento en las armaduras metálicas. Una aplicación del lubricante para armaduras reduce el penalizador de armadura en 1. Se tarda 1 minuto en cada aplicación y esta dura 1d4 horas. Es imposible aplicar el lubricante sobre una armadura que se lleve puesta. El lubricante de armadura no proporciona beneficios a los escudos o armadura que no estén hechos principalmente de metal. Fabricar una dosis del lubricante de armaduras requiere una prueba con éxito de la habilidad de Alquimia (CD 15) y seguir las referentes a las habilidades de Artesanía.'),
('Malla para insectos','5po',1,1,'Esta sábana de malla fina está hecha de seda de Kara-Tur. Al envolver con ella a alguien que duerma en un petate o hamaca, la malla mantendrá a raya los insectos normales.'),
('Manta de invierno','5pp',3,1,'Una manta de lana, gruesa y mullida, para mantenerte caliente en climas fríos.'),
('Martillo','5pp',2,1,'Una herramienta a una mano y con cabeza de hierro, que resulta muy útil para clavar pitones a una pared. Si un martillo se utiliza en combate, considéralo un arma improvisada a una mano que inflige daño contundente igual al de un guantelete armado de su tamaño.'),
('Mochila vacía','2po',2,1,'Un morral, fabricado en cuero, que se lleva a la espalda y se asegura normalmente con correas.'),
('Odre','1po',4,1,'Una bolsa de cuero de cuello estrecho que se usa para contener agua.'),
('Olla de hierro','5pp',2,1,'Recipiente redondeado de metal que sirve para cocinar alimentos, calentar agua, etc.'),
('Organizador de rollos de pergaminos','5po',0.5,1,'Esta larga tira de cuero tiene una serie de quince bolsillos superpuestos cosidos a lo largo de uno de sus lados, cada uno de ellos lo bastante grande como para almacenar un rollo de pergamino que contenga un solo conjuro. Al meter un rollo dentro de un bolsillo, sólo asoma la parte superior del mismo, lo que permite leer los títulos de los distintos pergaminos.'),
('Pala o azada','2po',8,1,'Utensilios para cavar o remover la tierra.'),
('Palanqueta','2po',5,1,'También llamada pata de cabra, esta barra de hierro está fabricada para abrir cosas haciendo palanca. Una palanqueta es la herramienta perfecta para abrir puertas o cofres, romper cadenas y maniobras similares, y proporciona un bonificador +2 de circunstancias a las pruebas de fuerza realizadas con esa intención. Si se utiliza en combate, la palanqueta es un arma improvisada a una mano que causa daño contundente igual a una clava de su tamaño.'),
('Papel (1 hoja)','4pp',0,1,'Una hoja en blanco hecha de pasta de fibra vegetal.'),
('Pedernal y acero','1po',0,1,'El pedernal y el acero sueltan chispas al ser golpeados el uno contra el otro. Haciendo que las chispas entren en contacto con yesca, puedes obtener una pequeña llama. Encender una antorcha con pedernal y acero se considera como una acción de asalto completo; encender cualquier otra cosa con ellos llevará ese tiempo como mínimo.'),
('Pergamino (1 hoja)','2pp',0,1,'Piel de res preparada para escribir en ella.'),
('Pértiga, 3m (10'')','2pp',8,1,'Allá donde sospeches que haya una trampa, es mejor poner el extremo de tu pértiga de 3 metros que la mano.'),
('Petate','1pp',5,1,'Nunca sabes dónde tendrás que dormir y un petate te ayuda a descansar mejor en pajares o sobre el frío suelo. El petate se compone de ropa de cama y una manta, lo bastante delgadas como para enrollarlas y atarlas. En caso de emergencia, puede hacer las veces de camilla.'),
('Pico de minero','3po',10,1,'Herramienta para picar o cavar.'),
('Piedra de afilar','2pc',1,1,'Piedras planas o con forma que se utilizan para devolver el filo a herramientas cortantes o armas.'),
('Pitón','1pp',0.5,1,'Cuando una pared no te ofrezca asideros para manos y pies, puedes fabricarte los tuyos propios. Un pitón es un clavo de acero provisto de un ojo por el que puedes pasar una cuerda.'),
('Raciones de viaje','5pp',1,1,'Incluyen alimentos secos, compactos y muy energéticos, que resultan muy apropiados para los viajes, como la fruta pasa o desecada, las galletas y los frutos secos.'),
('Red de pescar 7,5 m2','4po',5,1,'Aparejo hecho con hilos en malla para pescar.'),
('Saco vacío','1pp',0.5,1,'Es de arpillera u otro material similar y tiene un cordón para cerrarlo.'),
('Sello (anillo)','5po',0,1,'Cada anillo de sello tiene un diseño propio grabado en él. Cuando lo presiones sobre lacre caliente, dejarás una marca de identificación.'),
('Silbato de señales','8pp',0,1,'Para la comunicación en los casos en los que no haya una visión directa o el ruido de fondo no permita otro tipo de comunicación.'),
('Tienda de campaña','10po',20,1,'Esta sencilla tienda tiene capacidad para dos personas.'),
('Tinta vial (1oz)','8po',0,1,'Es de color negro; si la quieres de otro color, te costará el doble de lo indicado en la tabla.'),
('Tiza barra','1pc',0,1,'Arcilla que se usa para escribir.'),
('Trampa cortapies','700po',15,1,'Este objeto es similar a otros de su tipo y normalmente está diseñado para atrapar grandes animales como osos y pumas. Sus dientes afilados están unidos a delgadas hojas de metal afiladas montadas sobre un resorte, y el mecanismo está diseñado para cercenar el pie de cualquier criatura que forcejee para liberar el miembro atrapado. Los hin fantasagaz no inventaron esta trampa, pero han hecho un excelente uso de ella. Cuando son amenazados por sus enemigos, siembran el suelo de sus campamentos con estos peligrosos aparatos, escondiéndolos bajo la hojarasca o bajo tierra. Una criatura puede descubrir una trampa cortapies escondida con una prueba de Buscar, CD 15. Una vez descubierta, la trampa se puede desarmar con una tirada de Inutilizar mecanismo, CD 15. Cualquiera que pise una trampa la disparará; la trampa realiza un ataque cuerpo a cuerpo con un bonificador +8 y, si tiene éxito, ocasiona 1d6 de daño. Un objetivo apresado por una trampa cortapies puede moverse hasta la mitad de su velocidad si la trampa no está atada a otro objeto. Si esta atada de esta manera, la víctima debe romper la atadura o no se podrá mover. La trampa ocasiona 1d4 puntos de daño adicional por las hojas en forma de sierra cada asalto que la víctima realice una acción que implique movimiento. Una criatura atrapada puede intentar abrir los dientes de la trampa y escapar, prueba de Fuerza CD 25, o salir con una prueba de Escapismo, CD 30. Un fallo significa que la trampa ocasiona 1d4 puntos de daño adicionales y que la víctima continúa atrapada. Una trampa cortapies tiene un VD 2. Puede ser construida con la habilidad Artesanía (construcción de trampas), CD 20.'),
('Trepador de cuerdas','15po',3,1,'Este aparato manual consiste en un cabestrante y en una rueda fija que se ajusta a la mayoría de las cuerdas normales. Cuando se encuentra enhebrado con una cuerda, el cabestrante permite desplazarse en un solo sentido con el beneficio del mínimo esfuerzo. Utilizar el trepador para ascender por una cuerda otorga un bonificador por circunstancia +5 a las pruebas de Trepar, pero reduce a la mitad la velocidad del ascenso. Enhebrar una cuerda en el trepador es una acción de asalto completo, así como desenhebrarla. Las ruedas solo giran en una dirección, evitando de esta manera que se deslice hacia abajo por la cuerda. Sin embargo, esto significa que, para que dos usuarios utilicen el mismo trepador, uno debe ascender primero por la cuerda, quitar el aparato trepador, y bajárselo al siguiente usuario.'),
('Vejiga para pociones','2po',0,1,'Es una bolsa flexible de cuello estrecho, hecha normalmente de cuero engrasado o el estomago curtido de una animal pequeño. Utilizado muy frecuentemente por las criaturas que viven en el agua, como los elfos acuáticos, esas bolsas pueden contener hasta el mismo volumen que una poción y se pueden apretar cuidadosamente para permitir beber el líquido que contenga bajo el agua sin que se derrame.'),
('Vela','1pc',0,1,'Ilumina a claramente en un radio de 1,5 metros y tarda una hora en consumirse.'),
('Vial para tinta o poción','1po',0,1,'Un recipiente, elaborado de cristal, metal o arcilla, que se cierra, apretando fuertemente un tapón. Tiene capacidad para treinta gramos de líquido.'),
('Zapatos de nieve','1po',2,1,'Fabricados con madera y cuero sin curtir o tendones, los zapatos para nieve son tremendamente útiles para moverse a través de una capa de nieve espesa. Los zapatos para la nieve eliminan la penalización al movimiento por desplazarse a través de una capa de nieve gruesa, pero imponen un penalizador de la mitad del movimiento por otros tipos de terreno, lo mismo que las raquetas de nieve.');
