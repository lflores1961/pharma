class BodyMassIndexController < ApplicationController
  skip_before_action :authorize

  def calculator
    bmi_table = {
     "Peligrosamente bajo peso"                     => { desde: 0.0, hasta: 15.0 },
     "Extremadamente bajo peso"                     => { desde: 15.1, hasta: 16.0 },
     "Bajo peso"                                    => { desde: 16.1, hasta: 18.5 },
     "Normal (peso saludable)"                      => { desde: 18.51, hasta: 25.0 },
     "Sobre peso"                                   => { desde: 25.1, hasta: 30.0 },
     "Obesidad clase I (moderadamente obeso)"       => { desde: 30.1, hasta: 35.0 },
     "Obesidad clase II (severamente obeso)"        => { desde: 35.1, hasta: 40.0 },
     "Obesidad class III (Obesidad muy severa)"     => { desde: 40.1, hasta: 60.0 },
     "Factor de grasa pura"                         => { desde: 60.1, hasta: 100.0}
   }
   weight = params[:mass].to_f
    height = params[:height].to_f
    if weight > 0 && height > 0
      puts weight
      puts height
      resultado = ''
      @bmi = weight / height ** 2
      bmi_table.each do |advice, range|
        puts advice
        puts range[:desde], range[:hasta]
        puts @bmi
        if (@bmi > range[:desde]) && (@bmi < range[:hasta])
          resultado = advice
        end
      end
      respond_to do |format|
        format.json { render json: {resultado: resultado, bmi: @bmi } }
      end
    else
      redirect_to body_mass_index_calculator_url
    end

  end
end
