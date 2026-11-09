measured_building=2950;
true_building=2945;

measured_beam=35;
true_beam=30;

absolute_building=abs(measured_building-true_building);
absolute_beam=abs(measured_beam-true_beam);

relative_building=absolute_building/true_building;
relative_beam=absolute_beam/true_beam;

percentage_building=relative_building*100;
percentage_beam=relative_beam*100;

fprintf('Building Height:\n');
fprintf('Absolute Error = %.4f cm\n', absolute_building);
fprintf('Relative Error = %.6f\n', relative_building);
fprintf('Percentage Error = %.4f%%\n\n', percentage_building);

fprintf('Beam Working Height:\n');
fprintf('Absolute Error = %.4f cm\n', absolute_beam);
fprintf('Relative Error = %.6f\n', relative_beam);
fprintf('Percentage Error = %.4f%%\n', percentage_beam);
