function runall(I, vector_tol)
	fig1 = figure(1);
	for i = 1:4
		tol = vector_tol(i);
		[Y drop] = compress(I, tol);
		rel_error = sqrt(mean2((Y-I).^2) / (mean2(I.^2)));
		subplot(2,2,i); 
		colormap(gray);
		subimage(Y);
		axis image;
		axis off;
		title(['Image with tol=' num2str(tol) '; drop ratio= ' num2str(drop) '%']);
	end
	saveas(fig1, 'figure1.jpg', 'jpg');