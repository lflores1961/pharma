# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(  name:                        'Luis Fernando Flores Oviedo',
              email:                        'fernando.flores1961@gmail.com',
              password:                     'foobar',
              password_confirmation:        'foobar')

catalogos = [ 'ALIMENTOS QUE IMPACTAN EN EL BUEN ESTADO NUTRICIO',
              'FÓRMULAS POLIMÉRICAS ESTANDAR LÍQUIDAS',
              'FÓRMULAS POLIMÉRICAS ESTANDAR EN POLVO',
              'FÓRMULAS POLIMÉRICAS ESPECIALIZADAS LÍQUIDAS',
              'FÓRMULAS POLIMÉRICAS ESPECIALIZADAS EN POLVO',
              'FÓRMULAS ELEMENTALES',
              'FÓRMULAS MODULARES',
              'SUPLEMENTOS',
              'MINERALES',
              'FÓRMULAS PARENTERALES',
              'DÚLCES LIBRES DE AZÚCAR']

catalogos.each do |cata|
  Catalogo.create!(tipo_prod: cata, descuento: 0)
end

Product.create!( tittle:                   'QUINOA',
                description:              'Suplemento alimenticio',
                image_url:                File.open(File.join(Rails.root, "/public/uploads/product/image_url/1/Quinoa.png")),
                laboratory:               'Some',
                price:                    120.30,
                presentation:             'Grano entero de quinoa blanca. Bolsa con 300g',
                indication:               "Muy útil para personas que requieren alimentos altos en proteínas y para personas con Diabetes por ser un cereal con un índice glucémico bajo.
Las posibilidades de la Quinoa son infinitas, se pueden preparar recetas desde el desayuno hasta deliciosos platillos para comida o cena para cualquier persona.
Se cocina en solo 15 a 20 minutos",
                properties:               "Cereal con un índice glucémico bajo que ayuda a mantener niveles adecuados de azúcar, rico en proteínas con aminoácidos indispensables para el desarrollo y grasas ricas en ácido linoleico.
Es libre de gluten y fácil de digerir
Rica en vitaminas del complejo B, vitamina C, E, tiamina, rivoflavina
Alto contenido de minerales, como fósforo, potasio, magnesio y calcio entre otros",
                catalogo_id:              Catalogo.first.id,
                tabla_nutricional:        "Pendiente")

Product.create!( tittle:                  'Linaza Golden',
                  description:            'Linaza Canadiense para cocinar',
                  image_url:              File.open(File.join(Rails.root, "/public/uploads/product/image_url/2/LinazaGolden.png")),
                  laboratory:             'Some Lab',
                  price:                  133.40,
                  presentation:           'Frasco con 440g',
                  indication:             'Mezclar o espolvorear 2 cucharadas soperas rasas en la bebida o alimento de su preferencia  (agua y bebidas, cerales y yoghurt, frutas)',
                  properties:             'Linaza Golden de Canadá es rica en fibra y aceites esenciales Omega 3 y Omega 6, pero además tiene vitamina E, fibra e incluso enzimas digestivas.
Semilla llena de propiedades que benefician la salud y que ayudan a regular el peso y el tránsito intestinal.',
                  catalogo_id:            Catalogo.first.id,
                  tabla_nutricional:      'Pendiente')

Product.create!( tittle:                  'Multi Fibras TonoSvelt',
                  description:            'Salvado de semillas con savor',
                  image_url:              File.open(File.join(Rails.root, "/public/uploads/product/image_url/3/TonoSvelt.png")),
                  laboratory:             'Some Lab',
                  price:                  133.40,
                  presentation:           'Bote con 450g Salvado de Trigo (TriticumAestivum), Semilla de Chia (Salvia Hispanica), Semilla de Linaza (LinumUsitatissimum), Ácido Cítrico, Stevia (SteviaRebaudiana) y Piña como saborizante',
                  indication:             'Para pacientes que requieren mejorar su tránsito intestinal
Forma de uso:  Mezclar 2 cucharadas soperas copeteadas en un vaso (240ml) con agua o en el jugo de su preferencia, agitar vigorosamente
Consumir 1 o 2 veces al día',
                  properties:             'Salvado de Trigo, Semilla de Chia, Semilla de Linaza, y delicioso sabor a Piña',
                  catalogo_id:            Catalogo.first.id,
                  tabla_nutricional:      'Pendiente')

Product.create!( tittle:                  'FRESUBIN PLUS  (Hipercalórica)',
                  description:            'Complemento alimenticio',
                  image_url:              File.open(File.join(Rails.root, "/public/uploads/product/image_url/4/FresubinPlus.png")),
                  laboratory:             'Some Lab',
                  price:                  133.40,
                  presentation:           'Lata de 236ml 350kcal (1.5kcal/ml) Sabores: Fresa, Vainilla y Chocolate Hidratos de Carbono: 49.26g  (56.3%) Proteínas: 12.86g (14.7%) Lípidos: 11.28g(29%)Reducido en sodio (170 mg) Sodio 139.4 mg  Potasio 328.6 mg',
                  indication:             'Ideal para:
Altos requerimientos de energía. Desnutrición Pérdida de peso Anorexia Geriatría Pre y post cirugía Cardiopatías
Problemas gastrointestinales Puede consumir de 1 a 2.5 latas o de acuerdo a la prescripción médica.
Vía de alimentación oral o por sonda. No para uso parenteral.',
                  properties:             'Fórmula polimérica hipercalórica. Bajo en sodio, libre de lactosa, gluten y colesterol ',
                  catalogo_id:            Catalogo.find_by!(tipo_prod: 'FÓRMULAS POLIMÉRICAS ESTANDAR LÍQUIDAS').id,
                  tabla_nutricional:      'Pendiente')

Product.create!( tittle:                  'Complan Leveled',
                  description:            'Suplemento alimenticio',
                  image_url:              File.open(File.join(Rails.root, "/public/uploads/product/image_url/5/Complan-leveled.png")),
                  laboratory:             'Complan',
                  price:                  133.40,
                  presentation:           'Bote de 1Kg, sabores vainilla, chocolate y fresa',
                  indication:             'Tomar acompañado de alimentos ligeros en el desayuno y la cena',
                  properties:             'Proteínas, minerals y vitaminas',
                  catalogo_id:            Catalogo.find_by!(tipo_prod: 'FÓRMULAS POLIMÉRICAS ESTANDAR EN POLVO').id,
                  tabla_nutricional:      'Pendiente')

Product.create!( tittle:                  'Ensure',
                  description:            'Complemento alimenticio rico en proteína',
                  image_url:              File.open(File.join(Rails.root, "/public/uploads/product/image_url/6/Ensure.png")),
                  laboratory:             'SOme Lab',
                  price:                  133.40,
                  presentation:           'Botellitas de 1/4 de litro en chocolate, vainilla y fresa',
                  indication:             'tómelo acompañando el desayuno y como sustituto de la cena',
                  properties:             'Proteína, vitaminas, etc.',
                  catalogo_id:            Catalogo.find_by!(tipo_prod: 'FÓRMULAS POLIMÉRICAS ESPECIALIZADAS LÍQUIDAS').id,
                  tabla_nutricional:      'Pendiente')

Post.create!(title:                       'Primer Post',
              tipo_post:                  'Informacion',
              content:                    'Los artículos se deben clasificar según el tipo de Post: Información, Advertencia, Recomendación, etc.',
              picture:                    File.open(File.join(Rails.root,"/public/uploads/post/picture/1/tarjeta.jpg")))
