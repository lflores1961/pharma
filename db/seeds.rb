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

Product.create!( tittle:                  'Ensure',
                  description:            'Complemento alimenticio rico en proteína',
                  image_url:              File.open(File.join(Rails.root, "/app/assets/images/Ensure_Advance_Polvo.png")),
                  laboratory:             'SOme Lab',
                  price:                  133.40,
                  presentation:           'Botellitas de 1/4 de litro en chocolate, vainilla y fresa',
                  indication:             'tómelo acompañando el desayuno y como sustituto de la cena',
                  properties:             'Proteína, vitaminas, etc.',
                  catalogo_id:            Catalogo.find_by!(tipo_prod: 'FÓRMULAS POLIMÉRICAS ESPECIALIZADAS LÍQUIDAS').id,
                  tabla_nutricional:      File.open(File.join(Rails.root, "/app/assets/images/tabla_n_.jpg")))

Post.create!(title:                       'Primer Post',
              tipo_post:                  'Informacion',
              content:                    'Los artículos se deben clasificar según el tipo de Post: Información, Advertencia, Recomendación, etc.',
              picture:                    File.open(File.join(Rails.root,"/public/uploads/post/picture/1/tarjeta.jpg")))
