%Autor: Josué Almanza Martinez

%Plantas
planta(albahaca).
planta(alcachofa).
planta(alcanfor).

%Nombre cientifico de la planta
nombre_cientifico(albahaca,"Deimum basilicum").
nombre_cientifico(alcachofa,"Cynara scolimus").
nombre_cientifico(alcanfor,"Laurus camphora").

%Propiedad medicinal de la planta
propiedad_medicinal(alcachofa, antiinflamatorio).
propiedad_medicinal(alcachofa, descongestionante).
propiedad_medicinal(alcanfor, analgesico).
propiedad_medicinal(albahaca, diurecito).
propiedad_medicinal(albahaca, carminativo).
propiedad_medicinal(albahaca, emenagogo).


%Padecimientos que abarcan las paginas 47-49
padecimiento(calvicie).
padecimiento(diabetes).
padecimiento(anemia).
padecimiento("calculos biliares").
padecimiento("congestionamiento del hígado").
padecimiento("vesicula inflamada").
padecimiento("tónico cardiaco").
padecimiento(golpes).
padecimiento(torceduras).
padecimiento(tumefacciones).
padecimiento(gota).
padecimiento(reumatismo).


%Relacion sobre que padecieminto alivia una planta
alivia(albahaca,calvicie).
alivia(alcachofa,"congestionamiento del hígado").
alivia(alcachofa,"vesicula inflamada").
alivia(alcachofa,"calculos biliares").
alivia(alcachofa,anemia).
alivia(alcachofa,diabetes).
alivia(alcanfor,"tónico cardiaco").
alivia(alcanfor,golpes).
alivia(alcanfor,torceduras).
alivia(alcanfor,tumefacciones).
alivia(alcanfor,gota).
alivia(alcanfor,reumatismo).


:- discontiguous manera_de_emplearse/2.
%Relacion para indicar la manera de emplearse de una planta
manera_de_emplearse(albahaca, "Hervir un puñado de hojas frescas, exprimirlas bien y con el juguito friccionarse bien el pelo").
manera_de_emplearse(alcachofa, "tomarse el agua en que se cuecen").
manera_de_emplearse(alcanfor, "bolas de alcanfor").


%Relacion que indica que manera de emplearse de una planta corresponde a un padecimiento
relacionada_con_padecimiento("coctel de leche", solitarias).
relacionada_con_padecimiento("coctel de leche", lombrices).
relacionada_con_padecimiento("Hervir un puñado de hojas frescas, exprimirlas bien y con el juguito friccionarse bien el pelo", calvicie).
manera_de_emplearse("tomarse el agua en que se cuecen",anemia).
manera_de_emplearse("tomarse el agua en que se cuecen",diabetes).


%Regla para dar tratamiento a un padecimiento
tratamiento(Planta, Padecimiento, Forma) :-
    alivia(Planta, Padecimiento),
    manera_de_emplearse(Planta, Forma),
    relacionada_con_padecimiento(Forma, Padecimiento).





