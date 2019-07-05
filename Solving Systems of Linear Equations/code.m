 P = 90000;
 
 E_Al = 75000000000;
 E_Ni = 209000000000;
 E_Steel = 197000000000;
 
 A = 0.0004;
 
 L_AD = 4;
 L_BE = 5;
 L_CG = 2;
 
 delta_L_AD = 0;
 delta_L_BE = 0;
 delta_L_CG = 0;
 
 for d = 0:0.1:16
     matrix_A = [ 1 1 1; 0 10 16; (24/(E_Al*A)) (-80/(E_Al*A)) (20/(E_Al*A))];
     matrix_B = [P; d*P; 0];
     force_matrix = matrix_A\matrix_B
     
     delta_L_AD = (force_matrix(1)*L_AD)/(E_Al*A);
     delta_L_BE = (force_matrix(2)*L_BE)/(E_Al*A);
     delta_L_CG = (force_matrix(3)*L_CG)/(E_Al*A);
     
     figure(1)
     hold on; grid on 
     plot(d, delta_L_AD, 'r.')
     plot(d, delta_L_BE, 'b.')
     plot(d, delta_L_CG, 'y.')
     
     title('Aluminum')
     xlabel('d Metres')
     ylabel('delta l Metres')
     legend('Bar AD', 'Bar BE', 'Bar CG')
 end
 
  for d = 0:0.1:16
     matrix_A = [ 1 1 1; 0 10 16; (24/(E_Ni*A)) (-80/(E_Ni*A)) (20/(E_Ni*A))];
     matrix_B = [P; d*P; 0];
     force_matrix = matrix_A\matrix_B
     
     delta_L_AD = (force_matrix(1)*L_AD)/(E_Ni*A);
     delta_L_BE = (force_matrix(2)*L_BE)/(E_Ni*A);
     delta_L_CG = (force_matrix(3)*L_CG)/(E_Ni*A);
     
     figure(2)
     hold on; grid on 
     plot(d, delta_L_AD, 'r.')
     plot(d, delta_L_BE, 'b.')
     plot(d, delta_L_CG, 'y.')
     
     title('Nickel')
     xlabel('d Metres')
     ylabel('delta l Metres')
     legend('Bar AD', 'Bar BE', 'Bar CG')
  end
 
    for d = 0:0.1:16
     matrix_A = [ 1 1 1; 0 10 16; (24/(E_Steel*A)) (-80/(E_Steel*A)) (20/(E_Steel*A))];
     matrix_B = [P; d*P; 0];
     force_matrix = matrix_A\matrix_B
     
     delta_L_AD = (force_matrix(1)*L_AD)/(E_Steel*A);
     delta_L_BE = (force_matrix(2)*L_BE)/(E_Steel*A);
     delta_L_CG = (force_matrix(3)*L_CG)/(E_Steel*A);
     
     figure(3)
     hold on; grid on 
     plot(d, delta_L_AD, 'r.')
     plot(d, delta_L_BE, 'b.')
     plot(d, delta_L_CG, 'y.')
     
     title('Steel')
     xlabel('d Metres')
     ylabel('delta l Metres')
     legend('Bar AD', 'Bar BE', 'Bar CG')
    end   