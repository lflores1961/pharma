# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create( tittle:                   'Quinoa',
                description:              'Suplemento alimenticio',
                image_url:                'Quinoa.png',
                laboratory:               'Some',
                price:                    120.30,
                presentation:             'Grano entero de quinoa blanca. Bolsa con 300g',
                indication:               "Muy útil para personas que requieren alimentos altos en proteínas y para personas con Diabetes por ser un cereal con un índice glucémico bajo.
Las posibilidades de la Quinoa son infinitas, se pueden preparar recetas desde el desayuno hasta deliciosos platillos para comida o cena para cualquier persona.
Se cocina en solo 15 a 20 minutos",
                properties:               "Cereal con un índice glucémico bajo que ayuda a mantener niveles adecuados de azúcar, rico en proteínas con aminoácidos indispensables para el desarrollo y grasas ricas en ácido linoleico.
Es libre de gluten y fácil de digerir
Rica en vitaminas del complejo B, vitamina C, E, tiamina, rivoflavina
Alto contenido de minerales, como fósforo, potasio, magnesio y calcio entre otros")

Product.create( tittle:                   'Linaza Golden',
                description:              'Aceite para cocinar',
                image_url:                'LinazaGolden.png',
                laboratory:               'Some',
                price:                    120.30,
                presentation:             "Frasco con 440g. Ingredientes: Linaza canadiense molida de origen (LinumUsitatissimum)",
                indication:               "Mezclar o espolvorear 2 cucharadas soperas rasas en la bebida o alimento de su preferencia  (agua y bebidas, cerales y yoghurt, frutas)",
                properties:               "Linaza Golden de Canadá es rica en fibra y aceites esenciales Omega 3 y Omega 6, pero además tiene vitamina E, fibra e incluso enzimas digestivas.
Semilla llena de propiedades que benefician la salud y que ayudan a regular el peso y el tránsito intestinal.")

Product.create( tittle:                   'TonoSvelt',
                description:              'Suplemento alimenticio',
                image_url:                'TonoSvelt.png',
                laboratory:               'Some',
                price:                    120.30,
                presentation:             "Bote con 450g. Ingredientes: Salvado de Trigo (TriticumAestivum), Semilla de Chia (Salvia Hispanica), Semilla de Linaza (LinumUsitatissimum), Ácido Cítrico, Stevia (SteviaRebaudiana) y Piña como saborizante",
                indication:               "Para pacientes que requieren mejorar su tránsito intestinal. Forma de uso:  Mezclar 2 cucharadas soperas copeteadas en un vaso (240ml) con agua o en el jugo de su preferencia, agitar vigorosamente. Consumir 1 o 2 veces al día",
                properties:               "Salvado de Trigo, Semilla de Chia, Semilla de Linaza, y delicioso sabor a Piña")

Product.create( tittle:                   'Fresubin Plus (Hipercalórica)',
                description:              'Suplemento alimenticio',
                image_url:                'FresubinPlus.png',
                laboratory:               'Some',
                price:                    120.30,
                presentation:             "Lata de 236ml 350kcal (1.5kcal/ml).Sabores: Fresa, Vainilla y Chocolate. Hidratos de Carbono: 49.26g  (56.3%). Proteínas: 12.86g (14.7%).Lípidos: 11.28g(29%)Reducido en sodio (170 mg). Sodio 139.4 mg . Potasio 328.6 mg",
                indication:               "Ideal para: Altos requerimientos de energía. Desnutrición Pérdida de peso Anorexia Geriatría Pre y post cirugía Cardiopatías .Problemas gastrointestinales. Puede consumir de 1 a 2.5 latas o de acuerdo a la prescripción médica. Vía de alimentación oral o por sonda.No para uso parenteral.",
                properties:               "Fórmula polimérica hipercalórica.Bajo en sodio, libre de lactosa, gluten y colesterol")

User.create(  name:                        'Luis Fernando Flores Oviedo',
              email:                        'fernando.flores1961@gmail.com',
              password:                     'foobar',
              password_confirmation:        'foobar')
